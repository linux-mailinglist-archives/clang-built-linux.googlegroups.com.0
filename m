Return-Path: <clang-built-linux+bncBDAMN6NI5EERBGWDXT6QKGQE6XYCC4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id C63832B29A6
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:15:22 +0100 (CET)
Received: by mail-ej1-x639.google.com with SMTP id c10sf5087440ejm.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:15:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605312922; cv=pass;
        d=google.com; s=arc-20160816;
        b=tNagoL95zp4vUr8ljw/mjtqs8ZnM185MkcUcI/rctfBxFIuYzl4I6aMkGoWfPJ7/Gx
         0MQTHTkJ9jl1gQn6ANXH0T53J8LMj5azt5E5wV/CPf9ONI3aFP+LA4YoFKXtPwMcog7T
         29GidW3l6TNbLnoEUfCq4S6ic3TjuxRLMVB54Bo9PivV9iMGQQG2GnDWrVYfh3fChsWS
         9L7z/vaMK+tqq7aVPkBJL5CsUxzxV5t+k8ueWgKu9zGTUfjFwbXbj8WxHEij3TrFbVzq
         IKdek6d8Dj1UnFzUnNzKTr1cZWhr7wmQFc02mfgEyMR6/LUJSJZs1fW+WkNLUqTzwFuz
         p2zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=pHiFlAbfsGfVZpkGwXPcoinTXF7qdl4z+JystzI/fIc=;
        b=mcF0uGIfVIjwiCnG4bn2G8xsZZz0/leCVsIELVqJpXzxHsCQ6oTAo0cUqwyC3eZHeP
         ioAlg9dmxA+zig3DPMQhJhkZjfEGoKNmwbAyCAI9EUYqLqJRly0MqjG7MrSG1T4F4l6f
         n4uEJe+u1+AqO0iXHbnSNFsVt4t0khwJHBYA+aEOmZ4pdHwTUa/WjbPvosVxuT/kBBUT
         4VT1D8l7NnJYQ57XNRLC6beuPnIHl0mVHYZ5q6VQWl/PRiYPoPquLiS0hSXjPfTV3tso
         WtxezYUXZl532XovLWuNYqwHz1X19H7lgWE9kmm3fWnvScuBrpiYow08XopMZ79OfjMI
         If3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ebNgHyUY;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pHiFlAbfsGfVZpkGwXPcoinTXF7qdl4z+JystzI/fIc=;
        b=EQT/qXv4ZIpH5XMOhLRhSg4OOe56ATiFeHw3YQ9qZNdQodi4z0phnWRlxpSM/Cdm/d
         +bmc4Or13WqNHLV72f8gbZ7ahrEz5nsfqKLnyiwNQ4EmAV6Lorb0dtYs1mjh5c3St59W
         i6ncO6WcxMDhPdz0lzunluPe7/QXNsJ0DlQ5RZ0H72I3vYxjQo4NQNSZAUiLELcItXM1
         pWMwfwfPCdLPPcXbUIAdmvJfYy8/wC36zdFE0yPKWPl00HM1H+sB5diUwyZLQ/BprwWw
         EjBJ+j47FPOcXJvDddslzbbdBxpiM3S9O3JeEQ41PA3mt3QPdX3Z5Gstdyo+gcj+igXm
         v1hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pHiFlAbfsGfVZpkGwXPcoinTXF7qdl4z+JystzI/fIc=;
        b=tq/LQinotwgo9s5+tkawqFB1bqZypaZ0eLoCjy2P3yvgYtvoAcd6Dygn+CIR6oczeG
         qvD457GaJJ14XFXaqXx/CpLvzICLBiOYV9D/ai5+oJ9CfASuBw8+mO1P2uul1SVpyyH1
         IdEUzj2S9s0R6zdrqONAN90bUM8xIhBs50VMkUqRGf6NQHOpM0n5awgIfZO54D/qff5n
         Ahmg6d/1V/pkF8O70wbe+thBIK/66i/XcdEvH03h5xpxtYyXhpk9oZwhc47iyXcFFvjH
         wpB4l9zzzvyhG4EOZsPbOX8zTkhyFQLoug8GFwEHtAKnfdZeK0Zp+KNwv22qLeYAosBE
         cS3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kMY1kTusQ+M037jmazkdVf9hjSi5VANVUDL13vfOmC18659sN
	FIEnE1YwlgxddSplF62dELc=
X-Google-Smtp-Source: ABdhPJxojnz7Nvif/oTQZ4ElB4m9LuBwcXoBXhwS/nzC1Qhbpv4n/amUb8u0E2z3JXWaNDNN+mJUhw==
X-Received: by 2002:a50:e61a:: with SMTP id y26mr5330064edm.71.1605312922578;
        Fri, 13 Nov 2020 16:15:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:68a:: with SMTP id u10ls555117ejb.0.gmail; Fri, 13
 Nov 2020 16:15:21 -0800 (PST)
X-Received: by 2002:a17:906:b01:: with SMTP id u1mr4658392ejg.427.1605312921621;
        Fri, 13 Nov 2020 16:15:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605312921; cv=none;
        d=google.com; s=arc-20160816;
        b=kyOgrdk3wb3DcG/5kShaDTK5OfnLfpS9aZfk0XMOsrOgwZlhWqhE83n4O6DFttz1Xj
         /85CxAvnaifUJ58O9KOjTWvYzbnIK37/fPdXfy0ASt5m6NeAoWef3bOkPN/BJUIZ+CVx
         DjoQOGq2kk8InIPfN8FazEsPyf/FCqZVRqCKmE3WYSnTaiJpNXl8jSdcEepWG6tAQ2hM
         lW8bbzwcTPbUe8KY2UxNZbLpXFIiNP/R8QYyc2UBY16GdNAaMEKa1lxoz2AESb/jJMF2
         ejRNYPzeM3r8u2XQ67Wr6xnYwOxPOzkUjGYMhwk3nwJKH9XWrS/a2HUl2TgCcljTqKP5
         KWpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=vvG8CPWDFDqmJouW/M6yHgJapIxayz7eh5nBkFkA8c4=;
        b=HdHzmie57pDjKSjA9ym5qGvjfJqHYuwCj31kKyXcBC8RsNS1vGKpoPe3yjRmfDvMjn
         8nTYitLal84DkZDGgHpbh7QDgysrWBlSfvCRNuTs/L0x8fPWcu+dl7y9dUY4GnaHUHUl
         04BYGeCUqEr9UqIsqvDVr1xTX2ks93i35h8d3X9RWnQdQ+eTHLNTrBBGviDjw0PhPZAo
         kBjUW2WdW+5OEuDsef599dp7WftE4IddyJ/ENC04d7sJh5JPsbGesP25su2RcF/yomHd
         DLYVPhzmRcotbs/AYf/kcCFVfjM8zXCJBkyEvQEED0T7DdU71P4lHr5GdyIZGXI7GqX2
         YebA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ebNgHyUY;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id bm8si369282edb.2.2020.11.13.16.15.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 16:15:21 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>
Cc: Darren Hart <dvhart@infradead.org>, Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [PATCH] futex: remove unused empty compat_exit_robust_list()
In-Reply-To: <20201113172012.27221-1-lukas.bulwahn@gmail.com>
References: <20201113172012.27221-1-lukas.bulwahn@gmail.com>
Date: Sat, 14 Nov 2020 01:15:20 +0100
Message-ID: <87ima8bxpj.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=ebNgHyUY;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

Lukas,

On Fri, Nov 13 2020 at 18:20, Lukas Bulwahn wrote:
> Commit ba31c1a48538 ("futex: Move futex exit handling into futex code")
> introduced compat_exit_robust_list() with a full-fledged implementation for
> CONFIG_COMPAT, and an empty-body function for !CONFIG_COMPAT.
> However, compat_exit_robust_list() is only used in futex_mm_release() under
> ifdef CONFIG_COMPAT.
>
> Hence for !CONFIG_COMPAT, make CC=clang W=1 warns:
>
>   kernel/futex.c:314:20:
>     warning: unused function 'compat_exit_robust_list' [-Wunused-function]
>
> There is no need to declare the unused empty function for !CONFIG_COMPAT.
> Simply, remove it to address the -Wunused-function warning.

While I agree with the removal, I disagree with the reasoning.

The real argument is that the stub function is useless. Addressing the
warning is a side effect of the removal, nothing else.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87ima8bxpj.fsf%40nanos.tec.linutronix.de.
