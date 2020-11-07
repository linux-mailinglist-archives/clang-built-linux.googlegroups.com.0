Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLF7TH6QKGQELBMJQ4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1282AA3F4
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 09:49:49 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id h19sf1894282oib.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 00:49:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604738988; cv=pass;
        d=google.com; s=arc-20160816;
        b=xaYMi/ZWvKxN8fscYtWT7RAAvKt5A+Q3xzgKKN++XQOCkyVQxXm4OvfccCEoWW2wEx
         Lx0u1/J38wyEForLbwIf/SrperZFPKPbMUkD3e+lG/39albyCHOMnY2vqQ1JOD1LlyeO
         g+BWAbh/mnuiCPxFmTGSjiOlzFEIXT7HYA9m1KohSEZT9ORSCDqcT4II+i04L2UWSBRx
         I3zlDshRh18KmTFSQSJtnmba6jXZegX7ce0Tpw3z+gE51K9S5Zbiqm7w2tGy9XtopIXW
         zaKbW9AlH8c+vrQOIVa+myYs2iVXRxGum4m6/bYiZTMMIfYEFv+l8evtZ9AYUFFGFml1
         d3CQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=O39rslEtscLC8Ln6qQ9SGMZnLQA3T74Y9QN/Lk0TvcQ=;
        b=uKLMRIcP0g4RWIuFT1T5PSlO3/VO8A5cD+APHQj4TBHtP5s2YebqgaD+asEAcZlUS7
         G8UL11XqJx5A+3Ur6LBfjIcMfkHn751d9eZLTQNQ7uK5GjIuUG0L/p9+B2TrePHGS2da
         q3I909kFkPcL/lXYQf349KGvsOw6rK7m43TpYbrN6Ue718+/cc+G36KbQlf8aElzlw78
         BntxX672RFpqa03S8qBW8mu60qiconAz+kW2f30ykC42JAZSznmOrr5tluSs43nhTJ9x
         7ZgeRrKsyhaGtnmfPCY+iQVU2937UcdWJYDhbi/2knDW02W3LEeQudkVKsGLcXL02yxW
         3IWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dD9J/n8G";
       spf=pass (google.com: domain of 3rf-mxwwkaakwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rF-mXwwKAAkwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O39rslEtscLC8Ln6qQ9SGMZnLQA3T74Y9QN/Lk0TvcQ=;
        b=fiNW8PqLMdebs15MWfuAR4vCyAdKeEX3vh2Kmu9om7RTT112ppmS8rULZ/Zcz3yiF+
         4VEL0VvHlvWn/TStChkm51GOzYRIti5E9VdgCdToXQ2U2BjpqA5Oi144yddikkGBG011
         mGIthO4RYE9VjNxePL6SPRmEhP3QMcLKLQ85rabvlJeL6G1Q/y8RxxtKATcsq+vbHQcU
         ddHvarv/TA+FQS+8OZq+6C200xxa7BQd+LksUUR2PGHFg1NRSc4XN7N9ut+pk41UrB5u
         mDtN7tBhqOCBqtaTM4CdSgnoz2+7o+lqFlP+Rf5cx3929dlC03Gre2cmpf6oPYtYXIPe
         9UGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O39rslEtscLC8Ln6qQ9SGMZnLQA3T74Y9QN/Lk0TvcQ=;
        b=TA7JKjs+Ycsja1eEdVkBNsaQR+xk16YS/avCYyAG2+MHCkMNDGGwB7nG+N/pd9QWXe
         lH9SNMmnqIjuECk2qbOH+o4+tzAOKRajntO8+yiBDGQ8HDsoYJ5zWBrjEHvDTmG/iR6M
         UYI9mvAi5lo3/QXrmpbMv3cSl+N787lTtQQu/yklz8p4rkF1nUtth/fe7hoeswL+a9I1
         xYNcgGidFz0XEkcOQXNIbngMKvRDWujqAQqSKlFiJsmumf49QgMRoyh+22xQawGzAlBB
         goQh+saW8z7F4ukJKdo62qM+usEHkvUQSjAVtFLqTYPHR3JyZm601CbLbJfV5DnFZG5z
         PPsg==
X-Gm-Message-State: AOAM532Xr8vlt11eKBksI3r2AtjbJ6JWmNT1dhrq27Jms5Jxo2lkxqOv
	boIaLPj69ZEmYR1HeREZkRg=
X-Google-Smtp-Source: ABdhPJxxu+k4qxap7I+yxQ1iy5TCW8HXCuJ1w7j6GfOAM9BM6ceby43erUVo57Tvju4xELBM+DHTXA==
X-Received: by 2002:a9d:1b4a:: with SMTP id l68mr3900918otl.194.1604738988845;
        Sat, 07 Nov 2020 00:49:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c8a:: with SMTP id q132ls1010459oib.0.gmail; Sat, 07
 Nov 2020 00:49:48 -0800 (PST)
X-Received: by 2002:aca:7250:: with SMTP id p77mr3579238oic.130.1604738988514;
        Sat, 07 Nov 2020 00:49:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604738988; cv=none;
        d=google.com; s=arc-20160816;
        b=P++wfKegqf5QI02Zr/APb9+5y0r04LU2psGTJtBk69epPI1KxSHzBiPsyTtfDUz5cV
         WqxX4wqZ3igfxmTM6KQjlQydat7bQLE0wfOyCMp9lJbyPceDlvsbY3RbJXVGexpsGsom
         kHTyHwPSLAvN+mf/h9Xj60xYOWLdyhViko1JM/VYYOY6J3KQdNY2IWJ+uKX9fGxsQY9n
         X1+v3nzUuzBCs7QeDytni0/uK/h5rn0rNN5PNbRzbK9nXMsqIA1SwpM8wXc9A91Qb73p
         R95rHklbcCaDuOcgl3B17Lll3REnG2DswJ6qZkDt+Q17dgmr7UT7ZyArr/mvP3nKCTiw
         4xdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=6WU5XJ/qlfBh5YZsFPkg9rhMeyoErIKJCIfbV8EW5YE=;
        b=vd6LtbKaOayNZEfRcX8MZXt4UJ2HTIf/N3ha46QhvOHEwJ1OMOFwOXgwkPPFcZcJfH
         OBB0mGem0iBZtZDCdF9V1xDHTSrtH2L3WQbBtGHAqUdK/myUWDg4UIIS3UtjacpC6foq
         eF0VPhoSeeiPAKXtUunGV1OENCGPdUj0hNu83eyJId0c12HUHFR5072IW/uRsk9XO8Xx
         MfphUuyJMNb0x+MAxa+Iuni6LpvMRYlIjdSv87QJCktNCre9QUDFKAvdG+odR3Yxx8pj
         oBaImzoiQb2aVV3AkaSEzJ2rDMF/zj7iSWRDvDCbtgQ1Pqa7EPTyNu9rwttwNmsf7q03
         Kccw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dD9J/n8G";
       spf=pass (google.com: domain of 3rf-mxwwkaakwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rF-mXwwKAAkwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id i23si335374otk.5.2020.11.07.00.49.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Nov 2020 00:49:48 -0800 (PST)
Received-SPF: pass (google.com: domain of 3rf-mxwwkaakwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id b189so4617862ybh.5
        for <clang-built-linux@googlegroups.com>; Sat, 07 Nov 2020 00:49:48 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:8404:: with SMTP id
 u4mr3292320ybk.48.1604738988042; Sat, 07 Nov 2020 00:49:48 -0800 (PST)
Date: Sat,  7 Nov 2020 00:49:39 -0800
In-Reply-To: <CAMj1kXE=V96pJ7xK=9xMh-1Eph4FH7S4WDXDyJUH+82_Zn5DXA@mail.gmail.com>
Message-Id: <20201107084939.3512560-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAMj1kXE=V96pJ7xK=9xMh-1Eph4FH7S4WDXDyJUH+82_Zn5DXA@mail.gmail.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH v2] ACPI: GED: fix -Wformat
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-acpi@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="dD9J/n8G";       spf=pass
 (google.com: domain of 3rf-mxwwkaakwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rF-mXwwKAAkwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Clang is more aggressive about -Wformat warnings when the format flag
specifies a type smaller than the parameter. It turns out that gsi is an
int. Fixes:

drivers/acpi/evged.c:105:48: warning: format specifies type 'unsigned
char' but the argument has type 'unsigned int' [-Wformat]
trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
                                            ^~~

Link: https://github.com/ClangBuiltLinux/linux/issues/378
Fixes: ea6f3af4c5e6 ("ACPI: GED: add support for _Exx / _Lxx handler methods")
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/acpi/evged.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/acpi/evged.c b/drivers/acpi/evged.c
index b1a7f8d6965e..fe6b6792c8bb 100644
--- a/drivers/acpi/evged.c
+++ b/drivers/acpi/evged.c
@@ -101,7 +101,7 @@ static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
 
 	switch (gsi) {
 	case 0 ... 255:
-		sprintf(ev_name, "_%c%02hhX",
+		sprintf(ev_name, "_%c%02X",
 			trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
 
 		if (ACPI_SUCCESS(acpi_get_handle(handle, ev_name, &evt_handle)))
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201107084939.3512560-1-ndesaulniers%40google.com.
