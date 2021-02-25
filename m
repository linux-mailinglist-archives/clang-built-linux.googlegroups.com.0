Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBW5I4CAQMGQEP26FAZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E1732587F
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:19:24 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id g16sf2594142uaq.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:19:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614287963; cv=pass;
        d=google.com; s=arc-20160816;
        b=kKCHdHuMrJE+b/9o8pFzFOeJyLmPRlptJSH/4vUCnIg3khHHZ1PSqFyt3edkZFeTPZ
         mVXWBlRXB34DGlVczznhxyRcu/JLVHvYyzOXFWYbnpHb9Z/1omNh/sM/jaDwUPU7elBh
         f5VW+DgDUIcSAdfZgRvzMr+uPkr8Cvwin779rrKBUOnZnHNvrAMyL4TQ2tSlOJBSZAoE
         inu69YW5U4TjnCfypOYwZGykXAaEcxC7YPv6AqF1OEmpdG6Jq/mkgkQLVYL3fhw+7kn0
         0YPSi6g4GJbiMoRVC2S8g2hVJHxln3SnSwkrOhgizHo0jTjGXcBn0nkptbpCPmUpjjOx
         J3TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=15Aerw3z4xsE7JCJ+onXvLoceF36Zln7rqs8T3AJkeo=;
        b=ikY8Vx2D2iFjX1CJ5/x2QGt6+jusoSbg6865IqiIhLEhrU4kRsxguDS9VGQw1SC6TI
         W8w++X4D+SmYqk84BLNs1TBaeyNHFpRMB38Eti/XJ8gs1EdMzGG+Uu2zHhNubWMJgANo
         SYkaNmrzZszJ+D0GczaNr2RHxdQCxBNs47A4mguT9Hd09xY0ODgGMYyYAfABXfkzS1Z9
         mYYPY8f+pct99OujNtJ4FZD8cytz76RyGWKL2dzG4SSUyzIpqiN9ubAjGZJbDb1y2P71
         ECtWQUT9/GYjShaSWKN2tQ1Z+mMNCdK5nJLVWrq1Q6henEmqYIOmLsIBymhDm9so7Kxk
         ihEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HwMOFaKh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=15Aerw3z4xsE7JCJ+onXvLoceF36Zln7rqs8T3AJkeo=;
        b=cThkL1DarF6agRJ1fO1x9kUGQ5UqFYpg4J6o5nAQdYlFz8vCBkZIGHoq74dHZiQm1E
         /el8K3S4jZ1YMle7d0LFseIS7iFVu2ECm20sN05ndLfWYZ6MI5WoU305Z6Ah0G3kKb9v
         nW8nrRfn72SSqSIJRjDKupQ0E5tp2L7AZ6rvdob+264SZxYruwjw1lYlGLiyvIWBbM3v
         8Uqy8jCEr0YFnINeHYY2U/5u5To+mxjeRcOlZc/hELpcM5Fihj05qHayJUQUfIwqsrq4
         ZmN5EfnmzlyaAekuAu+kkuyJXzGHc/JbtbcxPyubcFi83nvqM2pN/+L8pW2ZZXpEOWKQ
         tYZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=15Aerw3z4xsE7JCJ+onXvLoceF36Zln7rqs8T3AJkeo=;
        b=RvdkmgOQw8q64E6hZuZOzQLyzFzz4vKsRJhfEYq1VfOeni+teJl0tq6eowAMSsJPZK
         NLTLL9VZb4VfHbG3xUA9XeiPbfvdnw9o0UEz/9jFsJdIvK6H0IyittqsZGhFPZppWiMn
         Scme38ZFPA/qyQ/poD6m0TuRvmZ8q/ctXW2wkFFXBYPn+pjkwRi30e5qs5yIemwaCHYc
         rnvhiP4XBIP17cSLhayNyZxZf8Qa/MB93toOR9SQLSM2Bw3xhdSL1tRqQyl77rLODLGz
         xaFUfHawOqS3EAoey4fR0HGunUiBYJwA6vTX3Vv0EqqHnYcXBrNCSenG1JSnbwcGwoOe
         UdLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321dIt0z0I6E2LvclBv4GtQ7loMCQx5yDC/GuEpWbp4yDd8Qzkh
	eo4TycEAMvWdSH6aVONZavE=
X-Google-Smtp-Source: ABdhPJzizco11kHrMDVkCg8uxFpGqO3ih9w0BsAJ8Ekef1uHl68WLJdom0YGWa+DSFp8mBbeRpSOIA==
X-Received: by 2002:a67:f455:: with SMTP id r21mr2765859vsn.42.1614287963376;
        Thu, 25 Feb 2021 13:19:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3844:: with SMTP id h4ls496266uaw.8.gmail; Thu, 25 Feb
 2021 13:19:23 -0800 (PST)
X-Received: by 2002:ab0:6785:: with SMTP id v5mr35658uar.72.1614287962959;
        Thu, 25 Feb 2021 13:19:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614287962; cv=none;
        d=google.com; s=arc-20160816;
        b=gNFeZ7+f16ZjQpCNs8batS8WIo9fi58rFKmXKWNXsgW15u8WnUSVyhWpOvA45Sf4ZQ
         AGctIry2+rdJVA2x8F1g01+ZVkBMOhYWKI3RkkDudXyi3eR4bDJpRpCI6v+WzUuNoAyT
         W5r3RS5qImQttLaEJRDuvcK1rwuWqeuH7qxlPEpY/v2bSHYRIH0WX/DRwmRmzRFZz5us
         XGq82AwC/lOmeqMyGTO7XfIkv3HtC30dU1UjNrPl30ZKoPz3k8wcG7zFvBKQUG+bkYaO
         KCQHjYZNKf5ojdqBbx9+Np5AtZ4tj+4uMLTipUtyhA3LM+6qrbvsbqj/KxU2aisdIG5Z
         boYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4m3wIYWlCfki6DaxQY5E7WbIL2IFlrLVwD0m764eiz8=;
        b=EIu5MgW3kXajckza2DIcrp8pwKHmurK11bPTpNKkApZI3QTdcMKeSN7/z8N0PKSL+w
         ZMCUtxobmpaSwUWbXR4XQBhsK7vxTQTtSH4LSlM4CBrjD6KawnFhWHpR5a3VZDleZG7m
         5Yxa46smNCVaoLWjgKeKWHgnx4Qo2+0NZL01j7UbuGaQNh9JnK4l17mFs6oMsFNXJdcr
         wBpt7xVGr08CKvNOsIrUxJFzlMmcPWOGLHHwmWroXMdC/6XP8LuNQFb9UWDOqc8Me5Oh
         ny62EdmeYagsIku4WdpfLx47D2H1WxL4Et/cKsS548YziaSyt5YIEKNG1g+9Q60WpTAO
         s2uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HwMOFaKh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id c12si13805vsp.1.2021.02.25.13.19.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 13:19:22 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id u11so3889301plg.13
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 13:19:22 -0800 (PST)
X-Received: by 2002:a17:902:860a:b029:e3:5d18:29af with SMTP id f10-20020a170902860ab02900e35d1829afmr27682plo.64.1614287961962;
        Thu, 25 Feb 2021 13:19:21 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e12sm6985606pjj.23.2021.02.25.13.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 13:19:21 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	kernel test robot <lkp@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH v3] vmlinux.lds.h: Define SANTIZER_DISCARDS with CONFIG_GCOV_KERNEL=y
Date: Thu, 25 Feb 2021 13:19:12 -0800
Message-Id: <161428794590.2304993.7596527135975566693.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210130004650.2682422-1-nathan@kernel.org>
References: <20210130002557.2681512-1-nathan@kernel.org> <20210130004650.2682422-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=HwMOFaKh;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, 29 Jan 2021 17:46:51 -0700, Nathan Chancellor wrote:
> clang produces .eh_frame sections when CONFIG_GCOV_KERNEL is enabled,
> even when -fno-asynchronous-unwind-tables is in KBUILD_CFLAGS:
> 
> $ make CC=clang vmlinux
> ...
> ld: warning: orphan section `.eh_frame' from `init/main.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/version.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/do_mounts.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/do_mounts_initrd.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/initramfs.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/calibrate.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/init_task.o' being placed in section `.eh_frame'
> ...
> 
> [...]

Applied to kspp/linker/orphans, thanks!

[1/1] vmlinux.lds.h: Define SANTIZER_DISCARDS with CONFIG_GCOV_KERNEL=y
      https://git.kernel.org/kees/c/f5b6a74d9c08

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161428794590.2304993.7596527135975566693.b4-ty%40chromium.org.
