Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIGMY6AAMGQE7FG3W3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 83769306712
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 23:16:01 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id l1sf1536531oib.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 14:16:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611785760; cv=pass;
        d=google.com; s=arc-20160816;
        b=0L63MDSp3SWYVdIosLBVw9Lpzl7gUCjbAED4GJ4mooDyGTJOq7paum1LK/HUdF+VzQ
         5DlzzjspoQTPkHHL9x2oi846AhJN8oWa5/4AvIomGMb+eFmQg334XLWkZrSN/cc0WIdq
         gsz795a9+Cxe0dVi5L8P9KtZr6Zl63eibV8mkJfUcDOuOCO5r2xZ5SVwPCYnznG/GDVC
         uEKw2zpiwHv7+WfH5uOfCPh940OnNZ/rNeGriKgjssX0yAJvbLVipybrQd0XqR97BGFw
         o9bd8fZW40wEOst0T3dLEqGTpWKI2kftDyS4uBpNak5kdwglnilyVNE7qE7G5YD/Lm8t
         U+Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=+fMY0BuGfUnTlVgFjuoevDhZRgjn6hrhsvsWOdoFi/E=;
        b=UzpU3h53mCJPLHgQurHAMjJhtaRBPG/uHWtbz0fxLHg+7eUM5zD4Sj2MwmBcXQYNzn
         sPVUjlJzEWQMMBFZepEBXOpbx3IQLAS1SolDFIF7/ynGvJo+tGml/4WJaOgzD1Cov21f
         ulSj+DrrxkMzwcCV+PeTAFVX+eg1dIMQN0fmmQC1d4AuEquB/MMHatUuBKPoozdNEkkr
         rr8UGs2Vbf6xTPjf1QJwXHJn8nIE/DNSPXKuWWhznd6OjgeDNUeB4l66N2CtSnnxnq14
         deO6Rx8vNABi3OTQrtU7mQWeXkxn3fs3YXQ9RCLtf0Zmt70jETzTWqVzmGrAw9KK9hvT
         uMDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XabaZr51;
       spf=pass (google.com: domain of 3h-yryawkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3H-YRYAwKADojZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+fMY0BuGfUnTlVgFjuoevDhZRgjn6hrhsvsWOdoFi/E=;
        b=S/2MgUusJpE/yyqf0TA1i+VV5uXOH6wI+VZe58GgI7wGUqjU4ysDemmF91omSSBDAd
         OuHMtus+SZI5X6s+mVECZwh1+hWpC9PgT2p1QtsKDX8LRW5VaVsryleZ+9mcNVMT78ie
         JbyAyxftVlkx0xxdPmelrDKuZSVShsy5VVx5CmBiYgGsymMR8hDTTUKLeyQJ1bbVdouM
         52xQMdKjNFoQJNQQPqGH4iJW471uTFsN88zJCLLOPVp8oa91CicQzMb5mynmccuVUmqK
         xAoT45eBWNKE5RUF1KD8DT0D+WeKmQa0wIYM3JUQ2XZNww4LgMWzYoj/ZOVdDYMqL77i
         BWhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+fMY0BuGfUnTlVgFjuoevDhZRgjn6hrhsvsWOdoFi/E=;
        b=gejOholqWdU8jiGsK8JaQisXgkNAl4KwNYA8fSkzKX6ljd7321jX6Rrt/9HY+eAu8J
         LhvAcZT6bdJMt5+U8YufVhiwfRhPkY8GElXT3dMU9x1hH+kOjTxvB8Mw10GuFyKqyZ3j
         CEbG3ivvP46j3e287N1cCk1otLj1M16KlkMMsgf7sMRR6aHx6JYU1PBAINdRVHzrEF4L
         SdEF51/06Y7WoS0LTmnjh+ASO3ET4ZBztiqOSRy3L1E6B6rsdhwdlD4cCRN/GJ8LmlQf
         FLpYzWx8XcCvR2CrWcXT8AAHekbL4ewnFbwWVibPqkMxvKW9segh/7xHz2DqZDPS6OyI
         yGWA==
X-Gm-Message-State: AOAM530acxE9+Vq4FNb3HvsDStEetcvkeYvsxKZ6lTH2uu6t9QFy/Y2X
	F8Sip9Zv9Oq25dfl5tIvgzU=
X-Google-Smtp-Source: ABdhPJw4uV02fk1OZ0/vV+KzG0W9LxCtonAh4vJKLXhx2ZyXG81VmpbInWhfwI7seJd02KQf4Di5VQ==
X-Received: by 2002:a05:6830:230b:: with SMTP id u11mr9455961ote.184.1611785760474;
        Wed, 27 Jan 2021 14:16:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5786:: with SMTP id l128ls847589oib.1.gmail; Wed, 27 Jan
 2021 14:16:00 -0800 (PST)
X-Received: by 2002:aca:3dd7:: with SMTP id k206mr4761944oia.134.1611785760067;
        Wed, 27 Jan 2021 14:16:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611785760; cv=none;
        d=google.com; s=arc-20160816;
        b=0ShIJL/IN1ak2L3yal5qZHyMPy36SNp+ZBXXC/+ScE/iorpke/jrrx5SkJ9phJIEx8
         +6pUjmEi2nUfzJpRJuaXSf58Tv4uS/WZcOw4F4WR6O2tqLuPP9nUdT9NAiv3hSjcCqem
         Zj4T0lr+bZywf2zW+EKTtau6HP5b9LX4o+u24ccfmJQ+dSGWwAXtupUltblRX0UH1uGW
         kFLF1kZ1MWiT6/qavxrPNzDtXHW8mo8Lr5euqGL4ZUcjchTE1Qr3WfaYTRrxoDvjxI6k
         kxHzmX68r9IgM0EUwv/I0JFrBsZevAhAmBKynSTsSs5Skii/nmwKN3GW6A4m4ymH85wS
         MJrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=nMvW9sCogvCQk3Z+FvTaolhNqJWAlRopE1dL8mD/EfM=;
        b=XhBuXCj3Mmc7ByIwxed6hVp3k7YW4UlPG+9dECzwf6p9raCJ0EOBpLuMLYIfOxi5gN
         T0gC4h5vZed//vfArtWkcAzZJw4+J76VUAZXFiMbZY44SodCofvqf5fTTth33zSFVOKF
         q1epygsQpxrs04v78BVqaA1ZA8AeKWZztpHnSLt4b5lp2zcNy9xqI/NxgW93wNsAc1HI
         wbVSftTSZhASgXmHG/oWeGkyOMQSWzF4/buSN9yvkiFk6EaE1JiyQZAV32qK6KtqN71S
         6IvwVqbyGi2uTXTooZAYLFfvsSLeuvQJUeP9qJcq+O/VSUc0kxJOQSbHrHZ0cQJXalpQ
         /tFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XabaZr51;
       spf=pass (google.com: domain of 3h-yryawkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3H-YRYAwKADojZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id r8si252023otp.4.2021.01.27.14.16.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 14:16:00 -0800 (PST)
Received-SPF: pass (google.com: domain of 3h-yryawkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id d8so2429834qvs.1
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 14:16:00 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:fe0b:: with SMTP id
 x11mr12660475qvr.18.1611785759532; Wed, 27 Jan 2021 14:15:59 -0800 (PST)
Date: Wed, 27 Jan 2021 14:15:57 -0800
In-Reply-To: <20210120173800.1660730-13-jthierry@redhat.com>
Message-Id: <20210127221557.1119744-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210120173800.1660730-13-jthierry@redhat.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: jthierry@redhat.com
Cc: ardb@kernel.org, broonie@kernel.org, catalin.marinas@arm.com, 
	jpoimboe@redhat.com, keescook@chromium.org, 
	linux-arm-kernel@lists.infradead.org, linux-efi@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	mark.rutland@arm.com, masahiroy@kernel.org, michal.lkml@markovi.net, 
	peterz@infradead.org, raphael.gault@arm.com, will@kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XabaZr51;       spf=pass
 (google.com: domain of 3h-yryawkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3H-YRYAwKADojZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
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

> From: Raphael Gault <raphael.gault@arm.com>
> 
> This plugins comes into play before the final 2 RTL passes of GCC and
> detects switch-tables that are to be outputed in the ELF and writes
> information in an ".discard.switch_table_info" section which will be
> used by objtool.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> [J.T.: Change section name to store switch table information,
>        Make plugin Kconfig be selected rather than opt-in by user,
>        Add a relocation in the switch_table_info that points to
>        the jump operation itself]
> Signed-off-by: Julien Thierry <jthierry@redhat.com>

Rather than tightly couple this feature to a particular toolchain via
plugin, it might be nice to consider what features could be spec'ed out
for toolchains to implement (perhaps via a -f flag).

Distributions (like Android, CrOS) wont be able to use such a feature as
is.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210127221557.1119744-1-ndesaulniers%40google.com.
