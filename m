Return-Path: <clang-built-linux+bncBC47TRXEZUKBBDW65DZQKGQE5E2FDYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id B996A191594
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 17:02:23 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id p2sf13467215oic.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:02:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585065742; cv=pass;
        d=google.com; s=arc-20160816;
        b=MDKlr88qW2VQT3zDXEVkrrAdmvU7VG7UrWeMkxDd2U4+sJ5YXvGbmrM2xadR/8sKlM
         nhNMLhzwFEJjZupu7fXhDoburgNzJ4DwAdVVmEeew8d8q8s98JxUjoP/5muF+wvx2/zr
         hbvgmu/+fG+5COm0TShOWR2mXKmuGos5+90mXajjqCiZ3wG7eWQ1qora7xrCX8d/yUuN
         oZTzxJ+rIanWVD3PyWpIb7tfURyMg1rw1UHaGU5OtFtyR2Ojk+UsgT9T4cWkBOPY2Tad
         fbSWs7921HdsVAAv9STnDNczKq7QFc7vKiCFSMu902Z4/ABi3+LYhx1RParU64FhpjeF
         Zc8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ERHJ6dYGksu4I57jSnapRc5uXA3Euz82LgFqNbvdQIw=;
        b=lgm1zuARESKdi1ZYSe3QWzwow9DTeddjrbHD7JQ3Ltn8AGB5lXQmaXgWQRHPVCqyI1
         YzJ9y35wzYfu9iDqPa2FxTwKoPujR0ltoncNh3XeY58VJ+XVR2zMq9/tSW7FQtj3NcH/
         2vDB/DYXPKCQnGfd6CfezB//Ej34zRZD2XqQ0cDp4pw17NxOXtP5dBzxRadljh7qSCd/
         WrJJhFcvcdGUo4dxLcL6k/igwIZ6nOUTtUfn7HL2/R8AB6ie580KkqxguLOgmapeDFxY
         SZOINkasZaDFQyXbMT5ahg+qSqc9oA1o5eHapefl6/mDoqMurvU7zdAeaEENmCf5RlLX
         UqCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DVQr77xZ;
       spf=pass (google.com: domain of 3ds96xgckeu4s4a7ru9w44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3DS96XgcKEU4s4A7ru9w44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ERHJ6dYGksu4I57jSnapRc5uXA3Euz82LgFqNbvdQIw=;
        b=Wgx4tapT3Jko/Ll/2ke64Z/Xr6bAGOgFlCVoiR4d0stCMfSIhmsJL1ozNxa6xWpgP3
         LusQEyhrtepeMymMaFei7Q3SywTcGiIXtfWXsK60V9u6og7FBcmrNC8FerAposgh4Fs8
         j2iiOm8TAs3vzhap4TuO8A4swfMHg9plfxWqDHk3HdkkkheBQEbaR8UORp/pE4MRvGx1
         fP2LEmNlvJgB5asjkKx9WSEhoEbhx4Y+O1hsimXfgIzLR5mAK/UMQySeHZ54rqPLCHXk
         ykrRg6tltr3fV5oyanLYAj8sDD7zjI/Kwg6wbsY84nUBN6fg9TUpAHg4PRQv+rG7MpLg
         DBdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ERHJ6dYGksu4I57jSnapRc5uXA3Euz82LgFqNbvdQIw=;
        b=RAbd1h1J1MFxHAHizz5YTsMOie7fq4wZe+gIdQp1D4Pj9OyaEwYpVbRbp/8VhkoKfv
         t6cMD/tM2yaFUV/u63MTQqO5G4Y8JoyqRv7HcEPKBJ4hriZX9l2m0vth6LnfDlpJd8KX
         PulfiIv4VsBq+k2J8LKJu3dXNvK5A3jHZBqRUMmzrwfz86Nk/UTmqCjI9Ai8QbuAX29b
         Rk1Om/v/nTQOgCWPfzz8xWECTcwcv4Br9HOMn9oSfbBwlhrOnqabHiRuWDklqJ4bSdYt
         /SXkhkqqScAFXxoAXSgUs7Z8J5XZ0XLmf6qd2IVEhqhUQifiJD6nZs/t3Dg+d84hF2fM
         dUaw==
X-Gm-Message-State: ANhLgQ2qqAePUXSSf/0oiQidyt1pFJVgvLyokDha53MFo9IG4e25C6vR
	cAg8Gu0pOhtySX6F44eYGfU=
X-Google-Smtp-Source: ADFU+vurH+eScA/IOFTlyuVliK5udlcHktTQVV+RR9rLypbIqWADGgunyBnG+lT1U5gSo5hCeVZRfg==
X-Received: by 2002:aca:5041:: with SMTP id e62mr3792320oib.146.1585065742655;
        Tue, 24 Mar 2020 09:02:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:30c4:: with SMTP id r4ls7805742otg.9.gmail; Tue, 24 Mar
 2020 09:02:22 -0700 (PDT)
X-Received: by 2002:a9d:798d:: with SMTP id h13mr23298377otm.25.1585065741911;
        Tue, 24 Mar 2020 09:02:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585065741; cv=none;
        d=google.com; s=arc-20160816;
        b=DYILmzRM2BchacfIMxeDbpIX5ithG8+Pm8aSMhgVFm21iUEhHS6lDli9XdL/00Z5TY
         oHyZw96yHz1AzsBkA/ZLIlQAi61pW7gJVcFllMw6Wn7nQbv6Qu7StQAE58DOPwcsAAHp
         pgi+P4HBJTob3YYdnFplvuTOU1/1WCyeLxvWHuGJtgDGbsjSvc+Rhlc8ry8GpCoV9fk4
         3y6DIaHMR2kkTKVv93qjgloE03lbNi1Ou6DWxttQLkaTrXKXLoCaX4+lyGvMPfJ/qL02
         JBSbdoM3EUd0cTLMs1LW/mXuQInwu2nrvV1rsTOnRMav1bgozu2987ezFVeu0MGDvrd2
         dfug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=0x/hnTcc2kjPvpKyUGqSSPPjkXWDC7wDxqwKdBvhNVI=;
        b=o3dBVMFCLrl+KOzRHUlXyO16AmIwQBvtIgCrB8Jom0PqahV7dgJT/3+u78yqW/r4Yk
         nWA0UBjkmT15Lqo3Af6wbK18u2Os7Nlhwfm3nsAAyrLQWOFrcduzvA24o6yhhFvhb2l6
         sGo6lN2TJXucW+5D67FEO9bQsZfaI9lzGCjiauaxGS0PRbK3F/xEwQ08t3iRDxXe0sU4
         KeaGxJQBXh26F4MGARCW1z8+je94Tbqfei74+epBn4JTwiGEpwrQMofiXfUNayrp74NJ
         hC0hlcBuNoVRZPABUAY83vUv8TxoyXhbRRKPfvSrEb4fDvhAco8xOSyesJwNK6VcLpyB
         8RnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DVQr77xZ;
       spf=pass (google.com: domain of 3ds96xgckeu4s4a7ru9w44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3DS96XgcKEU4s4A7ru9w44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id m19si371891otn.4.2020.03.24.09.02.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 09:02:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ds96xgckeu4s4a7ru9w44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id j7so6440901qvy.22
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 09:02:21 -0700 (PDT)
X-Received: by 2002:ac8:39a1:: with SMTP id v30mr27685736qte.112.1585065741247;
 Tue, 24 Mar 2020 09:02:21 -0700 (PDT)
Date: Tue, 24 Mar 2020 17:02:02 +0100
In-Reply-To: <20200323114207.222412-1-courbet@google.com>
Message-Id: <20200324160203.99593-1-courbet@google.com>
Mime-Version: 1.0
References: <20200323114207.222412-1-courbet@google.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH]     x86: Alias memset to __builtin_memset.
From: "'Clement Courbet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Clement Courbet <courbet@google.com>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: courbet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DVQr77xZ;       spf=pass
 (google.com: domain of 3ds96xgckeu4s4a7ru9w44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--courbet.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3DS96XgcKEU4s4A7ru9w44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Clement Courbet <courbet@google.com>
Reply-To: Clement Courbet <courbet@google.com>
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

> This shows the kernel getting smaller not larger.
> Is this still reversed or is this correct?

Yes, sorry. This was wrong. The kernel actully shrinks. Fixed.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324160203.99593-1-courbet%40google.com.
