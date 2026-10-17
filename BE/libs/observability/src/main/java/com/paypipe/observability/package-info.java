/**
 * 3개 서버 공통 관측성: X-Request-Id 발급·전파, JSON 로그, 카드번호·시크릿 키 마스킹 (10.5).
 * 도메인 DTO는 두지 않는다. 서버 간 계약은 HTTP API 명세로만 맺는다.
 */
package com.paypipe.observability;
