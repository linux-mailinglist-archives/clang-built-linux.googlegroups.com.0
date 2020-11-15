Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBCU6YX6QKGQEN3P45VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE5E2B35E5
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 16:53:46 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id h2sf8574657wmm.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 07:53:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605455626; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ezMhUJQYjg5dkKNamLKbyDqMjPNVugFTMHoa4HtsI1VFD2REjjf+PP3r5vXPRIdGU
         d9hT7lfZe4ajtZP1mhIGZdcUOpjjqQ+4Khp7275PkfMHghVzazkO+BK0L7oU81A4FaJ7
         sMiSHrpkn0P0akEwsBiSk1L87PIdy+Avp7u2stJVHQmLAanaKCzBGwaaQY/jxq6+1Czj
         ETIFMF3OhNoxFm+56tgptpL3uHAS/5yEYV/xy8Wf2xQKmOTdlCgp9v9Ra4Du3dWWvt4W
         jhVSbHpcXanJzma0H5f0TMM9urILE3jhRTcaEwYFeWBvrpkQyCLWvsq6HeikvRv3lLP3
         PJYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=wAuN2Y2X7AZSaLkoElmxP4DFPK1ZQj1mJwNLhOjCg0Y=;
        b=YyEYSb55YTaYMsyj1EHxoUzpz/xYIIc4etW+66dp0Ao+mrsJINJljsi8xRXVn0MpVj
         5qxYU7MrfaqPjnEVb1L+CQI5mvXd7SJVLpHpaEpy4c2L8NNqc//+/X/iOoDCjeKipRYT
         WxHu4tZBIuui1wM1nNphMK0DqqCapU23yhrjHpGcdnjSRavqlVt/SWSRthXrK1BYc0D8
         adEOoEBYL6RXkBTdGcGqXb4DjuLFx+OHobjRYgTn26hG1+Fj0UuLCzxO4jSIHvh6mmln
         u57e8XCcMQuz1Hksg23C7h1qmGsY0/OIMugRkYTFiA3RYlDEaDPmcEkkjlX+l2mlLrc7
         6wfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F0EMpZtg;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAuN2Y2X7AZSaLkoElmxP4DFPK1ZQj1mJwNLhOjCg0Y=;
        b=tal+MuAi3fNcObr3a2b46T0s/IhfnJWbl/z9MZCfklnxn+C/JLsKQaksm02hlEPeST
         u1K4ii4WLziDLZHkGf3tmcCfFDwDfVJWHCfvjBA84xzJTJghXvLtMeYzAtvDYXfQDiot
         M8CWYkKHmGq2tdsFooeJ9hlnc9qriqhPpT+tdag7rrv4MPHRW60E+Cgfo89txAF+Rsco
         eE0tYQ6XhMDV00uNKo8b9Z4n3FSpFx7wV15iGju8VTpXyYawQnM1r8J+1CCBdMgBxyoE
         S4e2fEjcpJ4H+aucJ2tJSoMama+0Dh3QyX+LlAyM+JH4OrFt6hCU+vVtY2YBsIsiYYUD
         Mnnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wAuN2Y2X7AZSaLkoElmxP4DFPK1ZQj1mJwNLhOjCg0Y=;
        b=QiHq9k+lKqAbpRP4hyoRDut7PXoAhK3Wr0MTpaO06DzOgamyxwz5OM1QmM2ORJnJHX
         kp+7MSbuDnS0Whm/LbU7JHSUsbdrf9Vwg2XBRDF6A1Rlmbd82Z5EmS6HcEtVrJbEGO7/
         jv9K3GflvuNw66oRhJTeG7DdNDqIX6amgGs15xQGUkSrufCGJdDc41FvyA0SuRc0BOWP
         ix4l2M7TCDLK7KLVVZ7sRKAVGDw53pM8ht7o92vIaLn4d3rP+2OwbPPVH8+DsOzuKVSK
         3WuGa++oyKpmMCWxd80DA4I8DLoFKs0zPTD+YcC52vbQjhSc8HrFJfv5ZneeizCej+PZ
         Fa7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wAuN2Y2X7AZSaLkoElmxP4DFPK1ZQj1mJwNLhOjCg0Y=;
        b=j8Sd1fqGINWWQLT3vNAD/3yr5yZRvNdptkDQe1ecpDherVU5V1CrDmhQCmjRt1b0gf
         QZm5LVEPBCCOEC2JnUpHk1J44JVKBe8JKek4x6yLwBmz6/l1k1ASbx/zUQ0BSiZlinlp
         tB7WSH7fuDvlY8yMo4et6E0SFZA1fmyYliWzUWsrnfmd0vhDkrm4mZxIC+Rsyx4/nMmh
         5avKm7XG8GmFRJyUJnocZwoDxU/toYpDZXVyVAMFMv0xL+GbyOmDZjsk6I664EkegfOD
         K0F+br1HayU7oCLPbi3Rc5YR4vsT632P5UAITgnsQsjTiP+ety24iaqxcIyhArpNC/Ev
         jurg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OfDKruRWQiKk4J4jWggOyYj68QA6Dvx6luBVDNRFSLVpMIBlX
	tS9o1vAhBNVqN27t/VgJOYo=
X-Google-Smtp-Source: ABdhPJwVF4HFszzKBS8JORFckRxPxg/DOe4j1IerXTR1tqm/G496FHCvQvM3iaZxXg77sUTcZX305A==
X-Received: by 2002:a1c:7902:: with SMTP id l2mr12127423wme.117.1605455626617;
        Sun, 15 Nov 2020 07:53:46 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:c689:: with SMTP id j9ls12118972wrg.0.gmail; Sun, 15 Nov
 2020 07:53:45 -0800 (PST)
X-Received: by 2002:adf:f546:: with SMTP id j6mr15652758wrp.219.1605455625641;
        Sun, 15 Nov 2020 07:53:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605455625; cv=none;
        d=google.com; s=arc-20160816;
        b=NExP2aaRS/8n/1Zm6xDfZclqVShiTeZMhe8MYntSHXOWys7R6KWgOQjz82HGpY+xCT
         CXNWeCv0ihwotVAv127uSmaO8mJeSVkAiWkMnThuKfmh5xuHDE656yenQpZWogWxrsf0
         tluA7t7tQ1Y/9J7AGLPHoU5pK07+n8U/cM4XTppQYLJ0E15NhODnNc/kG7ZXpU6TFznD
         uDp4YECJ8l1oa15AlaMhE59lmmIbsTMNm/mWAaLJWpftovu5ORsUUZF81scpdaYy6Xye
         QwvpYYdDTVecoUdYYpPGIpbQjHpZ7NxrCNisgwnI9AYesS0PVtyMgaHi6yyh2YPOk9rK
         pwzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=NTft69T1mTYtzyZd5VE9D1Un4kdVXkHnJCMEwBJBmSI=;
        b=m5WexM9QwRTliiuAmqcB20EyXocSax7noDwQM11ITIFUPPyML5yd7qDpgDCEH24l0Q
         obrjYXc3LT49kjIWO12lA2fUxJMFZyKUHSU78cKPkIP1VCdM0WyFo99aUhZU+vCV2FvZ
         NmTNSZ5TikOm8gq0QRN312OAiLTpFSCoLgZD4JyRkVoUJUBwHRh6Kiks8KUi/zAF+Ikr
         +JjXzvu88J58uyc04rLI9FDszCr9EDytn8scRIVwWDTtc3BbBzAtztUqlba1wP7dixsk
         43gbCaLqCeNCdZNtzvC3Q70MB8diPg3+JVIfRt5XMSelskWeQnYdT2EBTGlUeksqLPLp
         nvLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F0EMpZtg;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id j199si503951wmj.0.2020.11.15.07.53.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 07:53:45 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id za3so20885698ejb.5
        for <clang-built-linux@googlegroups.com>; Sun, 15 Nov 2020 07:53:45 -0800 (PST)
X-Received: by 2002:a17:906:3294:: with SMTP id 20mr10909244ejw.239.1605455625353;
        Sun, 15 Nov 2020 07:53:45 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2d94:6d00:cd54:3781:b4ab:7953])
        by smtp.gmail.com with ESMTPSA id k23sm9205537edv.97.2020.11.15.07.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2020 07:53:44 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] tracing: clean up after filter logic rewriting
Date: Sun, 15 Nov 2020 16:53:36 +0100
Message-Id: <20201115155336.20248-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=F0EMpZtg;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::641
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

The functions event_{set,clear,}_no_set_filter_flag were only used in
replace_system_preds() [now, renamed to process_system_preds()].

Commit 80765597bc58 ("tracing: Rewrite filter logic to be simpler and
faster") removed the use of those functions in replace_system_preds().

Since then, the functions event_{set,clear,}_no_set_filter_flag were
unused. Fortunately, make CC=clang W=1 indicates this with
-Wunused-function warnings on those three functions.

So, clean up these obsolete unused functions.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201113

Steven, please pick this minor non-urgent clean-up patch.

It possible that there is even more clean up possible, e.g., removing
some values from the whole enum, but I will keep that Steven to decide.

 kernel/trace/trace_events_filter.c | 21 ---------------------
 1 file changed, 21 deletions(-)

diff --git a/kernel/trace/trace_events_filter.c b/kernel/trace/trace_events_filter.c
index 78a678eeb140..c4fb3ffe018f 100644
--- a/kernel/trace/trace_events_filter.c
+++ b/kernel/trace/trace_events_filter.c
@@ -1561,27 +1561,6 @@ static inline void event_clear_filter(struct trace_event_file *file)
 	RCU_INIT_POINTER(file->filter, NULL);
 }
 
-static inline void
-event_set_no_set_filter_flag(struct trace_event_file *file)
-{
-	file->flags |= EVENT_FILE_FL_NO_SET_FILTER;
-}
-
-static inline void
-event_clear_no_set_filter_flag(struct trace_event_file *file)
-{
-	file->flags &= ~EVENT_FILE_FL_NO_SET_FILTER;
-}
-
-static inline bool
-event_no_set_filter_flag(struct trace_event_file *file)
-{
-	if (file->flags & EVENT_FILE_FL_NO_SET_FILTER)
-		return true;
-
-	return false;
-}
-
 struct filter_list {
 	struct list_head	list;
 	struct event_filter	*filter;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201115155336.20248-1-lukas.bulwahn%40gmail.com.
