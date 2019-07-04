package com.scheduler;

import com.dhtmlx.planner.DHXEv;

public interface ShedulerDao {

	Iterable<DHXEv> getEvent();

	void updateEvent(SchedulerVO schedule);

	void insertEvent(SchedulerVO schedule);

	void deleteEvent(Integer id);
}