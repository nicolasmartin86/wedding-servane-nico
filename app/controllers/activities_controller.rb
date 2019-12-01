class ActivitiesController < ApplicationController

    def index
        @activities = Activity.all
        tabs = @activities.map {
            |activity| activity.tab
        }
        @tabs = tabs.uniq
    end
end
