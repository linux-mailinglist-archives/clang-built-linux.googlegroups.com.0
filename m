Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBSGS22CAMGQEOXE4M7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DC8376B4E
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 22:55:37 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id g191-20020a25dbc80000b02904f84b30d8basf10245740ybf.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 13:55:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620420936; cv=pass;
        d=google.com; s=arc-20160816;
        b=yr9sXfuUekzNIngDka8KqIZlQu5Ia6wb3w4+UQUCPfgpSF6Adz+NiY4eScbfoaXuQj
         gl6Ix7jI0Gpl1lxCXok539LdIyj5jsJ8oy/tyDCDwz8aGR2Qfxb7y0xHnfn+1spDBfPS
         78024ECpV965ecOSu5blLroHWkFlpZKDHsI+zAtw0g6/TNXIRqEm6mxLz4SIN1UTYGEu
         Y38aBSh28m4pFCN/LrAkhsw9vgFX1ZqJRoGnci9W2xNzwmzBTHRNdbYgmhZOZv1Q+oxc
         Q50nwCBsDXWV+ra/Iq7AwADmo1rPDMbyiWTkBOhzaactN6LUdMHHiho4MNgVnybgMnH3
         VgsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=s/MH81vvmxjqUuxhExIisHv/5tywdz+3jm5SlkV+7K8=;
        b=PIA6oLCx0JEiJQ/aginX9z+BiNSxljzoPFpK/s5vnh0ucQVoVBImn6MVR/7h19WACc
         df4/IXUSwXIZOHKhFwIhNUpHaKz/a7BznHmQUPYjlPx78cpfd+R7qxAnp3+c04W4l/rA
         4tRmfZAFhI94id8j71QkLGv/VFGphWmS9U3NTcdM+gJTs0W/NJuv0fjQsgjqkZZLzgBM
         fGX40zcgheBn/vM4inMOkBqxiZBI/+IQysWxU15XzgHjqnhnWB19FC1t6hVfNuzWhBfB
         ggQt4e9B3z6a62O1fm0plfwXebvXwilya7Xxu4IfMmw7ctGas0KT536XwFEuF8ovmlhw
         xHmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LNxZxepW;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s/MH81vvmxjqUuxhExIisHv/5tywdz+3jm5SlkV+7K8=;
        b=bOcZKK170WnIu7geZSdPrkweSPf6XhFmOMktsnmZwXRE/iWoCdQnabOwzCAEusB6PE
         bFAEzB4fJsZNewarGsIQ4mWFUrebAYlUYkYLnmt2AtziFNZPFhwiqBqbv4IidER7JmyT
         oD126pXBnjy2kB1DWyZ59HxKe5clqluJqnTImBuZqDMP0eOLf+QwBpBeQkCfePMe5xzE
         FC98IIWbKRXmdg4QfzZy9RfPHUIim4u3+Sj4FTnVn3oZa8dlJ5Qw7W39+SByLQ03cck2
         ODousWVmR5YY1G1ASVZ5I+KS0aNsHA73ajot8E4m9M/B8j3F6OLAtgH/erXYdbxGUFzO
         PsSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s/MH81vvmxjqUuxhExIisHv/5tywdz+3jm5SlkV+7K8=;
        b=MdWN6OklYx/Pu1JgfYnToWhZOxHqsZqVylcGwmjCnw/xo6ARrmsZQwLdaVyeBMzQuh
         dV+0F9qrPbIXcJ+px6vDsDA5in+qlTAEHiZYdlQuV4iibPYbvnrlOyXc+PjS8BCALDB+
         oEMN48+BEUVB1UhiRJQ76LRTWZQeA3Ou+hzNZGPi2TaYZwbORrxoY2ZCLIAXpJ5+NifS
         yAzZ34TTvGcTGL0XL7DaefALO2QiqDk5aoMuKEPhTqluI3YY/M/83ZIZDH9V6454oTvy
         vyaKmh5nWQ6VMxHUtepYSYo3XWfC3YTKqEtYCd4hXKCKyQTprW0PtBjn2Qe5Mh+3AsxC
         vwag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533oQDrEiTQb6XEYwSwzMXf/U5YhfJT7q19gk28Gi3SSCM93M+EC
	UXJBYHhjx6GEZgFSijkLqn8=
X-Google-Smtp-Source: ABdhPJw3x6mU973Drbay/QauC+YQsgha0TsNhC9UkV0/4ngnw//u0YozPXza4viUGvtd+Py+vsjaXg==
X-Received: by 2002:a25:5d0b:: with SMTP id r11mr16168460ybb.380.1620420936685;
        Fri, 07 May 2021 13:55:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7808:: with SMTP id t8ls3768816ybc.3.gmail; Fri, 07 May
 2021 13:55:36 -0700 (PDT)
X-Received: by 2002:a25:60c6:: with SMTP id u189mr15818722ybb.300.1620420936230;
        Fri, 07 May 2021 13:55:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620420936; cv=none;
        d=google.com; s=arc-20160816;
        b=L/HBdgiXJgVjjap++byy2Z/M/AtC/vtZvPSaHQrqb8UHVNTy84OR76GIejCod7CPIc
         EFhwq0EWfGfJitaf4k9UEuCaJsPFwz9Z8isQ4+KMfwHOUtVIIMLTrmgj0n4J9mZ6t64t
         nPv+h9skwKv8/FTnPVSn28+XDqfWdemLTOnj4McPwPJSwR5ZDGzjqPMZokZZGG7GQ20L
         Rq/+iXA/KSjn2yIDcBpt57bFapB0gu6e3wrwtC3yrHZHsFkhdPAc26EDT0XU8MiyUwsI
         vQ2CODq0uDGTO9yVxe6G5P+zvNsB2LHKFuNNO3LjHRLaAhkfhaabErC0S9D0Td7D6Snw
         8EKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=RPwYxQ/G3rhOoLfwIgiJmY5QnE9mrhjUeAyG7fqUPTY=;
        b=F6nmqCWixkUxqP9dkg/B23v7v6ooYSL3LHKKNBuGRKVZGVxp7A0JI1pMZQBWJz2g+V
         h8Ef33P6CRx1gEV/qHecmtF9Ac8OvO5bdu4t3hxxrIikAYvHkW1tR79HvKLxEPfhjbZi
         cpn/M7ZggUf7mLPGY7M12D5DkJrikRQXCbE8Vw9obTMwdp0RuZuagySjACRm7jzVOMDL
         byGGO3Zfu/JEmL+6p3dMZJLSQtC8rKK0hnLxKMSpmdFUfaSYL6dzNJvMjJPKURJBD55f
         h0oYqu5ERSMQOE+VXDxd06LrJF+cfybqZGCBDgmFiv8ZP0CML83hrNzbvTbOmxu7LeXS
         CLeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LNxZxepW;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id e5si269113ybb.3.2021.05.07.13.55.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 May 2021 13:55:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id g24so5926686pji.4
        for <clang-built-linux@googlegroups.com>; Fri, 07 May 2021 13:55:36 -0700 (PDT)
X-Received: by 2002:a17:90a:c087:: with SMTP id o7mr12769919pjs.65.1620420935943;
        Fri, 07 May 2021 13:55:35 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:3c7e:d35:3a19:632f])
        by smtp.gmail.com with ESMTPSA id ge4sm13161565pjb.49.2021.05.07.13.55.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 13:55:35 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Seth LaForge <sethml@google.com>,
	Ricky Liang <jcliang@chromium.org>,
	Douglas Anderson <dianders@chromium.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org
Subject: [PATCH 0/3] arm64: perf: Make compat tracing better
Date: Fri,  7 May 2021 13:55:10 -0700
Message-Id: <20210507205513.640780-1-dianders@chromium.org>
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
MIME-Version: 1.0
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LNxZxepW;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::1035
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

The goal for this series is to improve "perf" behavior when 32-bit
userspace code is involved. This turns out to be fairly important for
Chrome OS which still runs 32-bit userspace for the time being (long
story there).

I won't repeat everything said in the individual patches since since
they are wordy enough as it is.

Please enjoy and I hope this isn't too ugly/hacky for inclusion in
mainline.

Thanks to Nick Desaulniers for his early review of these patches and
to Ricky for the super early prototype that some of this is based on.


Douglas Anderson (3):
  arm64: perf: perf_callchain_user() compat support for
    clang/non-APCS-gcc-arm
  arm64: perf: Improve compat perf_callchain_user() for clang leaf
    functions
  arm64: perf: Add a config option saying 32-bit thumb code uses R11 for
    FP

 arch/arm64/Kconfig                 |  12 ++
 arch/arm64/kernel/perf_callchain.c | 329 +++++++++++++++++++++++++----
 2 files changed, 305 insertions(+), 36 deletions(-)

-- 
2.31.1.607.g51e8a6a459-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210507205513.640780-1-dianders%40chromium.org.
