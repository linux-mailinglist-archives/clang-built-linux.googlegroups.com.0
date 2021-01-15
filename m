Return-Path: <clang-built-linux+bncBAABBX4SQ2AAMGQEWFKSIZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A2C2F78CA
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:24:01 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id m3sf14023677ioy.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 04:24:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610713440; cv=pass;
        d=google.com; s=arc-20160816;
        b=yBlzDqAxrKub/FHbU4kTtNPXua+Krr/gkp6CkcugY4RpvPt+xCsC+7I1MrgQ/oLVWj
         NUxfw7RV7HuRIyUx87wEhgZcG2VkLnQtb/90DbehLLu/z1APkLlq0s+6jQ0sM6Akez3P
         9ehgCWkfLb0C220x4Ie/Wih+clobJsJ7Rex5NvRy23O/BhOx1zrkWLF+GThX0Ti/oXgN
         XdxLP3fjLogXDZY9+T1MyxWhvWYCm1N3xHigrXFmu4OtYlriknbZxjsNzsFrCRp9XJiI
         3FxH/Ko3z22S0HP6KzQ6HESmA+EdvSLLGu0jZtoRh+rqNpO8g5jZZbKZMeOytEgDzFXZ
         JRVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:references
         :in-reply-to:cc:to:from:mime-version:sender:dkim-signature;
        bh=Eu8Au/nj3rtjAnjDVqXxGbqRc7jR8Cqd2npQ+Zt9nRY=;
        b=gLh0vwrh8dkgTf3dEwytfGAjEyJ9MJCdTbtlAwM+xM8UJKPBExI6y110jMNKzdLWcj
         31IAWihgCP3kZBRyh4RUDYrs0BcoOI9jUdTzmFeH/FrmH4wacJN7iisK2EFnr2pg22n0
         b5QYOHyXOHznMAGm0ZJ18iEOmhw6nMsMGWZZFvcA/3CofxuKbb0rCN0wotjnGGIvD7QX
         JodnbHGThx3OG+1qBLq7W0sdyT8m35IlTJNZYn3SUXdSP++0NaaVfXQKltC8/s7Y4H3Y
         lU72bb4LMONGjeeOCNpMUDg99MXnJ2UWg9wrUSciEk5GRTJRTyj64OIqebD+vsyIgTDC
         TCig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:in-reply-to:references:subject
         :message-id:date:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eu8Au/nj3rtjAnjDVqXxGbqRc7jR8Cqd2npQ+Zt9nRY=;
        b=XFXfEzuY9Xt69UJpHZ6wjPsMGPe9obKG6S1eszOczslMp76Drz0AgNj/4pwQO5R9kP
         C1V3+Ax2ICHl4KRR4RvqjpTV2Xmb6nQnlCR0oIJlaa65icrPqGPYpJUn5HnYOFFRO2Fu
         a8J/t5BNBfQs8jVlkQtEy6+q/atRdvdTBPr/LfE0xXJKYtnQ41WWhvVeasp4GuydXSkt
         FGc5zMp2Wr2Bgmqr66bsaPEF2Gy8SKprklYbHc4JXsHJJlF+FCRaMFbYFPAwfd3X+fbI
         kCJplgN0wmVM206ehgzaZ6tnM3HL6Ss6nbJ6yAwwsEflDiUhQ9Jz1fUDgPmbL9W18aPM
         MY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:in-reply-to
         :references:subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eu8Au/nj3rtjAnjDVqXxGbqRc7jR8Cqd2npQ+Zt9nRY=;
        b=oNaMJjuvnMKGjb9DTx7FyLYhFYouHcrLyP6qRisD1HJtvOVwG2krEd1TCMXX6WZT7Z
         dszBFdaLIDy+wKtDHThMGe/YKIioI1Q/Cwod3mWBhq3qZmsvKEx1hFz/v7ESPiGSg6Iu
         Dl6oFbMETow0sYgUOeZ9bkb9dpxjEXKI94XFPW18+UGwFGM4PwoPPAL9+tiw2hUt17tv
         B23MzA7qTM3Vota/isIYGb8GnF7K7IGE6N8eC4N/MNkIpPFttkX8OV+UR7TiSChajKG6
         xL01TI0TKsMqgLO1roc93A+s0E31BJlG0eY/bCP9i5c3hCtVwVL4j6N7Y9lRfugUJlRQ
         6yXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533d00UwEriGAx+eNHdSOhQ+/Jw/EH+9bTkfX6jzlLmXoPjjhZH5
	H/4vE0KXDivE841cnZIJocQ=
X-Google-Smtp-Source: ABdhPJyYtgaShBYRKETkzoDWJFiLQtjrfI0yixoXlpu44BYaBmfc11qisrgD7eu3vr0CJDVlhwhRLw==
X-Received: by 2002:a92:d40d:: with SMTP id q13mr10512922ilm.253.1610713440209;
        Fri, 15 Jan 2021 04:24:00 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cab9:: with SMTP id e25ls1093942jap.9.gmail; Fri, 15 Jan
 2021 04:23:59 -0800 (PST)
X-Received: by 2002:a05:6638:39a:: with SMTP id y26mr10162707jap.14.1610713439657;
        Fri, 15 Jan 2021 04:23:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610713439; cv=none;
        d=google.com; s=arc-20160816;
        b=uPAz62TFsbfxJ8gB7AKcKeBB6fMsEVe9PsGLdveNJAbDoQXzwwA4xBiUf6gVigBYKi
         Tntcpoc2wNa2RhcvHEDQW9f0kUx0DGI7IWNat16kJxdDMj4adzQBo7r+NzgrqezR7hzh
         Yfc/HbS0eTYQ4RXwzSFdBSKqguOsAx1fknxaJD16C5Py82T/quvgNVOqhB7hEfO7uXqW
         vsYEgto5kbzi02x64Z7w/FuvPfDfb3CbpywDaUd+sF2cOrE6R9P6JvSh8piofWgiYR1h
         SDWWnF/eEfdxJ3jWsmaI3jpfw3r8il5ELx7RzKzjV6rVvLvo4QWN9rP5S3Mj9mT/U74m
         UU+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:references:in-reply-to:cc:to:from;
        bh=ehbmQFTDr5k+HZe2dszKnvwpbrqmYSCrHUN3q9hskco=;
        b=KTAM5CwRhTZXVt4VT/O3iFtvVZQ0dK72DtWsBm8+jrqy8MrmGgeKYpAzprPzsiQxZd
         VAgQUiWUt1YeTBI+N3rjTzr0peMe2rO563fT5krr9RJ5TObK9tApNxIHvLiwTkDCF8Vo
         a8ZX83u27YkUlJXrH+oOgIpaENGVZ8UH/cIHO8pg0pEahUwhCG5E7+lm3uZoqEmX0ZDK
         TPgVMcFzjtwhVaXHmCmBw1mNWnrME+b1aFRllzvgoWbvdpnYEYogypXZMbTOQjRH2hbn
         gYNPsW0+1mOdQIL+8LM3+8wlsjH1oMsYccvwRzhL9mt9a0oD9NKbIKkf/Sm1pmxAvv2W
         EK3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id s10si545660ild.2.2021.01.15.04.23.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 04:23:59 -0800 (PST)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 4DHL2J52GBz9sWQ; Fri, 15 Jan 2021 23:23:52 +1100 (AEDT)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: stable@vger.kernel.org, Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
In-Reply-To: <20210104205952.1399409-1-natechancellor@gmail.com>
References: <20210104204850.990966-1-natechancellor@gmail.com> <20210104205952.1399409-1-natechancellor@gmail.com>
Subject: Re: [PATCH v2] powerpc: Handle .text.{hot,unlikely}.* in linker script
Message-Id: <161071339895.2210050.3375251012287631556.b4-ty@ellerman.id.au>
Date: Fri, 15 Jan 2021 23:23:52 +1100 (AEDT)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ozlabs.org
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

On Mon, 4 Jan 2021 13:59:53 -0700, Nathan Chancellor wrote:
> Commit eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input
> sections") added ".text.unlikely.*" and ".text.hot.*" due to an LLVM
> change [1].
> 
> After another LLVM change [2], these sections are seen in some PowerPC
> builds, where there is a orphan section warning then build failure:
> 
> [...]

Applied to powerpc/fixes.

[1/1] powerpc: Handle .text.{hot,unlikely}.* in linker script
      https://git.kernel.org/powerpc/c/3ce47d95b7346dcafd9bed3556a8d072cb2b8571

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161071339895.2210050.3375251012287631556.b4-ty%40ellerman.id.au.
