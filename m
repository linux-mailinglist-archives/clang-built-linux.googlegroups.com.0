Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBXPIXHZQKGQEWQSRX6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F508185F0A
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 19:30:56 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id e14sf2224337ljp.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 11:30:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584297055; cv=pass;
        d=google.com; s=arc-20160816;
        b=l5JQAaG+Dsf0BS2NFlYGj6dhdpSaq/XjPa5PxQiuB2WT658VAHzaItUktVh6dEuGRy
         oGWlIqu0VOtRJD+5/3wgb4t6Mcsrr+1yaeUpZRknwd08Q+gs1xQ+u2vKpVyt+ahb+m0W
         QaJfowbhbavhMm5maVSDS3pn+4mud54dU2GHTuN+lfeMC07+a0JJCyCk2Le3ZNKgh3xn
         cYCqDccxdlH7vYQSVjQG7YmJ0dDKiejJSpx1jNp5Wd6ENNwCJa4mdUIgoUGnf30pMF8H
         qGusivHnaVRzaDWCdculfkXQ+bD7hBCUkgpg0AqpnaN0/yfz0o/q2vrh295UOC0Csnlc
         fqgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=To8AHh5yxmDElFYgTzi35LjkVL7X2IpceCJNvMhWWWs=;
        b=lnityEGXYBDb+XJ2tvbDDjsy4I9OrorKddqjQADurg8uP7lxMphpmF5a1mtl6NDZQB
         viFV2wtYGumH7bkwK1yjUy3/zoVZjECdtXDt1CEePrFWqaNp2MiUEYITDRHMqFSagsR8
         +9flCR3wKD1RvsbkwymER3UDUTLpmCzkxx7n6zU/EW1B6Wm6Y46ny/gj1vRjYYjwKSN/
         YHmWSqfqpN2jFwR/m8y3rEK14CWfH5bqFSwcTds7wlanjri5baV1caFgXjas2XAXrWV0
         /T6WN+WRAkHtfrVWVHXZBQIoBiqNb7oePBnLzO5AHcojF7TZX7/WT7nhPU0V+2EWkKap
         o/kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=To8AHh5yxmDElFYgTzi35LjkVL7X2IpceCJNvMhWWWs=;
        b=YScHh/TC4/Adh+6WL6jdQoIcsifww4JknVYsw8outlxAkjU35+c+plhFdBi+BoXIBT
         sUhwPf8CuWMng83UnlKjCnKmO7J/ZWbuCX//MfGnt8lqUQVsazN4L44v7PdL7UmaO+Lb
         PiwYQB8zLx9cYrTUQqZSvddgFBoXeO/XfkqE1rcRXDnt10Vl7ouAQ4hss4O0sILLzL3f
         Qmzj7e9qrqbL77mUJosurtjsZoqneFG5p6i2T9hc9H4//5YW/IbXP6EFGFlJESw/RUIt
         mkQt1Ra79R3TOfVoyOKi5mBOUMQ2s42MlcYYgIA9/BNxtBThsQYwrCQoL/ET9Oq7vL5E
         wFBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=To8AHh5yxmDElFYgTzi35LjkVL7X2IpceCJNvMhWWWs=;
        b=b0ygMBn/3PTcOITvwc40bZm4v67aV+cQ1AbXO/T98zbxTP12BTEBRgfxGQO8tx3qxn
         Wb1CV6IBCDqy60cE8ArABbidhyHn/fkWfDI52sq4XuadNsYj7xpClw0EnbjqeuuEo0wX
         GEHfQoZzLOeOHEDTp/5P/Fzfq5rfSIQhdQOoesnC3qdx/rKwDZBygyFP1aZQU+Eq6RPK
         AdscjxOsxPbFZfVJcDUEKhdYayTaYGrtLDeH/2cgnNaq7teTIhYhVw9jXuar7mtJyddl
         OT6ne0QJxz58jqDl0kgxVEGhJbwFJJHzPX+YFd8Yzd2B1ZZ6knw3toHdCNhH6lyR7ky7
         ivQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3QKbuZf6SNQgGo8u8ErMqqnPaT/XMWOGEzzgOvwNDuGiTw5yN7
	cT/o1ryJrKYwreZztWXIswo=
X-Google-Smtp-Source: ADFU+vuv73W8JvUqosJBrBhlW4e/GoJ0hBilJ39bpostzKGIVXbUc+KzYvh0Z3Y/6LiIhlSFS4pv/A==
X-Received: by 2002:a2e:b5ce:: with SMTP id g14mr4457997ljn.25.1584297053743;
        Sun, 15 Mar 2020 11:30:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f80b:: with SMTP id a11ls493400lff.2.gmail; Sun, 15 Mar
 2020 11:30:52 -0700 (PDT)
X-Received: by 2002:a05:6512:1042:: with SMTP id c2mr14107405lfb.6.1584297052826;
        Sun, 15 Mar 2020 11:30:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584297052; cv=none;
        d=google.com; s=arc-20160816;
        b=RQ/ddtl2lE8Mtj6SrorRRJ4rJ11Xu7ffzxNzHcEwGOOdoTV3YUvRSM3kjMxmLJN0Kc
         M9vgWXYbWQRrxCztio3UieUrOo3BtEEv+fV/iaum86Gbc311xH/8zeCJRdtBR++PxtId
         1x8F2vvdg55OmIogReY/i7wMbgNqE9LuzhQ62bBk7KeSCWtfp7m+Gtr5QScteecRlnFA
         z49vhlel+AO2gYz2M33te2pLumBlgYIG9/M5H2r5NW/5TUfP+cmkwYSatuVOxJ2ptsh8
         3cZRkDtyolay2cR6Tb0HvGxgzC0FDojMGkMT5n5wWyvmvTESLVUcU5hAxo90NNHxplrh
         QgbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=6o0CxPUdw+rotUQjcQCguutPHh+slvBG3wspjk82Ol4=;
        b=pxajfc8xcf+bBQeGE68/MBR4MX55l8ynQQ5jjBnnxM6zjfG/C5QDJsb5VZ6rRZDyT5
         cdl4riWimCNu40P9JOcGWp3MLpTM/lWOgNtq2Kk7OODQlG2JoNElBAf9eJ0AgUrRrCUx
         ZlWfnAW6ljDcF1S5WPAQh98s2u3rF5WGprxa6OiPc/VvXyjt5lA74tQaUuimWjAkik9k
         Q4p7+J1B55ppGOyQlCsio4kXOh8Z/3eFZf1lN0vWtETWOMyE/5UicY5qPsV2zPZsdQJs
         fjJxkzhZcgV0JvdivGII4bTBlkuusV9cSbGNOWjaybj7anjBFw0MOjguRRPCjSWlm2/n
         vS2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a21si209247lff.3.2020.03.15.11.30.52
        for <clang-built-linux@googlegroups.com>;
        Sun, 15 Mar 2020 11:30:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0CE31FB;
	Sun, 15 Mar 2020 11:30:51 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9CF083F67D;
	Sun, 15 Mar 2020 11:30:48 -0700 (PDT)
Date: Sun, 15 Mar 2020 18:30:42 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 20/26] arm64: vdso32: Include common headers in the
 vdso library
Message-ID: <20200315183041.GD32205@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-21-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200313154345.56760-21-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Fri, Mar 13, 2020 at 03:43:39PM +0000, Vincenzo Frascino wrote:
> The vDSO library should only include the necessary headers required for
> a userspace library (UAPI and a minimal set of kernel headers). To make
> this possible it is necessary to isolate from the kernel headers the
> common parts that are strictly necessary to build the library.
> 
> Refactor the vdso32 implementation to include common headers.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200315183041.GD32205%40mbp.
