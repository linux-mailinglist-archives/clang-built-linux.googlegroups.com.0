Return-Path: <clang-built-linux+bncBDGONMPGUAPRBVW3UWBAMGQEGW7MCFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 7071333696C
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 02:09:43 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id v16sf6395326lfg.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 17:09:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615424983; cv=pass;
        d=google.com; s=arc-20160816;
        b=G3dp5XFHlzLsGiuWBKLVkMTWEVrdYUpPTOQGwfQOmk0q9A4PEkQUiPZIYN/ve2609t
         FXoEgSUBQsQR+3bF2yf9whSNoC7ghReU9eQbTUkskat0eDAtAJdvKZmTh2taOPOITplD
         usmFGZKZUd9FqRjdxDmNBfFHcRHTp47sS/SjfWVyu42lXHUibiHhm8vHflq/HmZrocLh
         MYe5od7F7fC/MTpvx5zTZfYoKVHdDDT0HgdaSrofz69pwvvgQXECsIxbpPGq79ayAzwj
         A9IFtL0Ufq+YSVgMK360nYitJY35x64zsY5qSttg5OyuRkglkUv8GbMvySU9ZqHeG7Cz
         w2fQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=owD4QDAXCRVPzS122syT5jwrywSOK2XnZhIq19Ly/74=;
        b=SIbMVLJmsWgz0vT6IJAY4wXva8v0gGof/SsB4DnZxWeGAHAbnmP+lTPyWbw/+zAFpZ
         igdJEeTcB2U7+N5/EJeIBfHheyef9+LHRxJmEXkIw9Qe86iSpVdhbzFxaWW6BcpH/Za5
         aGdOkPGQuY7UngmgeYEaWX3jYMC42zbuxSYyflAEpyPKcsZ+o5kAAtPTK1LJ8A+kUwIU
         Lu0n35G6Th8QJcp7xxsgrxvnLr/K4rZz8PsnYyCLPrvn8wxI7G/QAYXi0jM/iRHCMJv7
         1Buy8dzKbKR++OctszWP60ytdp4feJ9D3JUlZFC3b0mLSHz01jOlpKb0Ksl5K0V7u25f
         LIgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h4DfeSJ1;
       spf=pass (google.com: domain of manojgupta@google.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=manojgupta@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=owD4QDAXCRVPzS122syT5jwrywSOK2XnZhIq19Ly/74=;
        b=Lb8VtWdZXgMspjOkEhs8q2s4sldbOi82sPrzF+5wInbKf1qB0vO3kunapjVVAg79fL
         UywjG8N9YCBW6tVjlxLwLbxXG1z2HcH+2Fv8vMEXQklf9AlJbfTjhlnMgAUoLKJ4augk
         6tTgVvXcTKSRYvmbmUppAxrSaL99bIiU5y3Y8dQjSE2ZWPXyxYYPAd1H7Qsr4WxikhIX
         f5/2jxliA1fWY6YeTNHM+ge4FA22GQKN5iSw+flzsmIrXm6ZA7uw3y+7Bsf6NcWdnSC5
         EVzFEsjffcCkQbCg3JMzU7a/UymRijGfxaFx9P5am+3gfBPZL2i8xp0MQN5kVGpBQsb3
         nnlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=owD4QDAXCRVPzS122syT5jwrywSOK2XnZhIq19Ly/74=;
        b=cE1wQfhUfHgFwybWq0KZ2MTyFQqt9FzI7LlkpAH6BySH4A5xaFcpVAvkV/kdNu3gqH
         XK4RbiPlqPcCCFnSCsTfpJj2oVHHWYBGWmqxAHf052+Sdj+wKQZyXQMkil1P23PnCYmf
         D72BvUS2AI1YhfCbFRTfHr337ic63CZtzsruZ+8d92EM47p84SgK1AZQ9hc4SqBITJTN
         htB8D8Cdk/DwGo7Cy2K2EvKOEg5qVw2khv9c5fT8gaz/2cVaFilxHdweqcy2m6dglzBY
         bC1VShoQyGBlxTubTqPFdFpwz7b0VmgoaHmzeyWoskCbUMppKXxGoabUPPfR3aT5ZGA9
         SRAg==
X-Gm-Message-State: AOAM530UmvUR8k1fTb57XaVgi1yQ8TjzhRjY+nJzvIHxmT6LiYjo5sgY
	ROOf3LNGRHyRwsgPbRwWI0k=
X-Google-Smtp-Source: ABdhPJwK1evp8efh+XzL40/elVgGFeBc47RwL52oP7bVI2EK3Oi+fnHjwBZJUQ0Vm5dmaGPSUKUcig==
X-Received: by 2002:ac2:53a3:: with SMTP id j3mr742364lfh.92.1615424982960;
        Wed, 10 Mar 2021 17:09:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls3398280lfu.3.gmail; Wed,
 10 Mar 2021 17:09:42 -0800 (PST)
X-Received: by 2002:a19:234b:: with SMTP id j72mr711825lfj.293.1615424981994;
        Wed, 10 Mar 2021 17:09:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615424981; cv=none;
        d=google.com; s=arc-20160816;
        b=0nh+CiVEGLlY042UdD/J+eNqwtbUQWVJLejN/z4vqlR1tCL8QgL5E9VOwfxgNimyLV
         AjgGJWbXgo+YeUjKA2V6KtnOA5OyRW3+qaCkTnjaH+Rx0DL+Ib/bQydd+a/C/8cUyAl9
         WXahphX+IlD8NHc6+WJey6Iqv34/DLNzEB2ljOxCRGWEnimI3x25HGoiLXqgS4Ic4HEB
         JFMJDyb5GF/bPwqnF4clJJhHnhjgy1ZouYM+s2fJRRUqU/hoA8HJ9kCtGH9uQpym+RCw
         7bsOtSTNER9mL1WIp1de7lBsuGK9yKyN50P6kZeM97EzW54X0Ja9H6AwJbpO2k5KTkwO
         b9Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=XiHrRV2/MBsmwC8yOcE2jl9MVMfB2FhFSIXVXevJIgw=;
        b=GbHHF4k/qdJLf1afk5Bg3j8sxjMfCJFxjlKtNf0k/vUIXA+K79seZa/sgY7aboRw3D
         9JNc68b/N9HKvyf4WqPmeSRFFgb8Z7IrqcYoRXO991fWiJwEpSM0Us2RpetfnRFmnUcu
         aBQrszpezNknZQeVs5pJFRBP9u+bSU/YR3dpMcIc3qswZ2OjlyuuIUJi432n8GzrxsfV
         Mz25Q6wzzoJCB0MXSXQhavOQG0JPL0O0FVvjAVefuqMNQWldPC3n9jAHfzMX+H7fEJWu
         WVn2jyFkgV+YlopwrFB7sX/GVTE77DAS509F6yko7PyGVCMrZlU+h0LOqLpgtrXy/01Z
         AdqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h4DfeSJ1;
       spf=pass (google.com: domain of manojgupta@google.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=manojgupta@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id a10si46098lfs.11.2021.03.10.17.09.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 17:09:41 -0800 (PST)
Received-SPF: pass (google.com: domain of manojgupta@google.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Received: by mail-wr1-x433.google.com with SMTP id 7so25435505wrz.0
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 17:09:41 -0800 (PST)
X-Received: by 2002:adf:90c2:: with SMTP id i60mr6000854wri.75.1615424981347;
 Wed, 10 Mar 2021 17:09:41 -0800 (PST)
MIME-Version: 1.0
From: "'Manoj Gupta' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Mar 2021 17:09:30 -0800
Message-ID: <CAH=QcsjHmWdLU6u-imNYWU2v=9ieP8bOk22FLERUd+rVUeqZNw@mail.gmail.com>
Subject: 9c8e2f6d3d36 for linux-4.{4,9,14,19}-y
To: gregkh@linuxfoundation.org, sashal@kernel.org
Cc: joe.lawrence@redhat.com, clang-built-linux@googlegroups.com, 
	stable@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Luis Lozano <llozano@google.com>, Jian Cai <jiancai@google.com>, 
	Doug Anderson <dianders@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: manojgupta@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h4DfeSJ1;       spf=pass
 (google.com: domain of manojgupta@google.com designates 2a00:1450:4864:20::433
 as permitted sender) smtp.mailfrom=manojgupta@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Manoj Gupta <manojgupta@google.com>
Reply-To: Manoj Gupta <manojgupta@google.com>
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

Dear stable kernel maintainers,

Please consider applying the following patch for 4.{4,9,14,19}-y
kernel branches.
9c8e2f6d3d36 scripts/recordmcount.{c,pl}: support -ffunction-sections
.text.* section names

It is needed to fix a kernel boot issue with trunk clang compiler
which now puts functions with  __cold attribute to .text.unlikely
section.  Please feel free to  check
https://bugs.chromium.org/p/chromium/issues/detail?id=1184483 for
details.

9c8e2f6d3d36 applies cleanly for 4.14 and 4.19.
For 4.4 and 4.9, a slight changed diff for scripts/recordmcount.c is
needed to apply the patch cleanly. The final changed lines are still
the same.

scripts/recordmcount.c diff for 4.4 and 4.9 kernel.

--- a/scripts/recordmcount.c
+++ b/scripts/recordmcount.c
@@ -362,7 +362,7 @@ static uint32_t (*w2)(uint16_t);
 static int
 is_mcounted_section_name(char const *const txtname)
 {
-       return strcmp(".text",           txtname) == 0 ||
+       return strncmp(".text",          txtname, 5) == 0 ||
                strcmp(".ref.text",      txtname) == 0 ||
                strcmp(".sched.text",    txtname) == 0 ||
                strcmp(".spinlock.text", txtname) == 0 ||

Thanks,
Manoj

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAH%3DQcsjHmWdLU6u-imNYWU2v%3D9ieP8bOk22FLERUd%2BrVUeqZNw%40mail.gmail.com.
