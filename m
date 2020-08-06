Return-Path: <clang-built-linux+bncBDAMN6NI5EERBHEAWL4QKGQEWQJVQGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D7A23E3DB
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 00:11:40 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id h7sf4081338wmm.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 15:11:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596751900; cv=pass;
        d=google.com; s=arc-20160816;
        b=klovMD8+MbHinIF4gP1B9kOCk+TqWOBTlfhwlZN0wDMczKUEkK/8ccBrvfgHbBGBNz
         ERSr4LZM6GrTtZ6A/b0jSHxYUQ5lDFz9wfOPvVgVZQeLZB/ecZRo2FhxDSTprK8VppzK
         DnDvOKAQWRIWP0OqNShdFpeTL5J4x/uiawfPf4fGWfdR23UUPw/pzujH28x1avhi0zuB
         mEePBnYma5ST8PuxYjEWa7SSYrcl0qY8Y9vSY/k8CvH1NEZ07m4W7QjucBYyHL9DO9ef
         eYQNE28CKwjrOsT3oxqGgLSCNDgd2hueNPJ31aYs7yiYXA5hst6FpaJfpGvt/gP1t4Tp
         nUaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=Q1ld+OVz9oycFizbTJV+vXQxsb24qJ8ACfI1qpFLAzk=;
        b=WUpF0jpWL3bh/VX7JRKXM0fyjVcr/Ab8UH9U9Xg88IC69kT7OEuVdclxht33wSyEgl
         xUMVBfcjAdIA3lylEYCv1fIpC9lOwRiwrfZu3YdaReHy5FYyWQcize5w7+ZWcLYY955x
         WvME9u8Wgu8Gnhe8BILyySYLjsBduTV0otzgS9QEo7h8eKDVZ8JdFfi6v10TtpnA0f2O
         8jU/bQMTyREufIlmFgORx+z2FbJNMajUDUPiksIBq4v/9cVOWXGGESWBTYHT9fZu90Jm
         5luhpsXrACnf+zClHuhIZmA5nBtZFAk4x8rcNga3lCGdlvazCEanXjOdKGVihLZRbT2w
         u0fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=RM9tinec;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q1ld+OVz9oycFizbTJV+vXQxsb24qJ8ACfI1qpFLAzk=;
        b=U3CAsEDyyqozLMCSWqYDrIU/0sInPboMeEgup1RVNrkTMNJdKMZNz2/pMMt01zGOuh
         hW5oK+cRvXo2T/wiLzYml/2HfL7j/wKGhbT1TbCVcIlzfatPdLGyY0HyAp/0EbyauV92
         TLyTmtCeipP/nocfNtir8RxtGJmhqs9Jn7g+K25nx18eJHFF0FtUHkSAA+PM6KGuuzQ7
         VMhHMihlenm3VOHYk5wRzju1oTVm47zHmI3ebf79SqqBfR5GLqwtiA1mHe38U5F+vYYV
         1QuRYCDdD/1nAKJA6tOosh8C+8afoTfiuM0qcdIli8jAF8bJaGFHVACL+zQlWXAlgqAf
         qvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q1ld+OVz9oycFizbTJV+vXQxsb24qJ8ACfI1qpFLAzk=;
        b=o1fQzfYvyTvNfynim/6rXyeU6xp/5Nyv9KHjdwebZzaDDgN9DjiNEF4MrnyqAzZxZX
         JC7xpqPxzqXJ8n1YyggEamZ+yPyvgddirFg5Ja5O0o2p++2Slk+JTLeINAWEubt/cRHq
         E7z4knLVEJneNfA6zw4ydMPac2iD8evdPEfabwavUg9GIMIFlGXgDG46LarBDGtUNkp1
         iDWHoPiw5EHj4M/rjiQVZlhffpPYbxxKw+wsLxdH7r0SltEi318jl1vL77UBYOCoe+SA
         6QnK1WGJQBA+Ay1RJKILijAGTRJ4WdRFiHf9MVS1xs3rANjBfU9/N5dcKjkcSdSPGsx/
         Ygcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310thgin/80144VXaQI45FLI6sIM+xjO/7MaHAspN3XUCPHRgIT
	6T7XkrOZikilnBbu4CmFjtM=
X-Google-Smtp-Source: ABdhPJweApEbO8VNbmuatt+ZOgiH1+/d7JkIhF3eAAVHZIVEwi75eXVW/bZlSke7IcqSXb6HM5vyvg==
X-Received: by 2002:a1c:2646:: with SMTP id m67mr10365067wmm.137.1596751900223;
        Thu, 06 Aug 2020 15:11:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a3ca:: with SMTP id m10ls2001961wrb.1.gmail; Thu, 06 Aug
 2020 15:11:39 -0700 (PDT)
X-Received: by 2002:adf:81c5:: with SMTP id 63mr9572794wra.185.1596751899793;
        Thu, 06 Aug 2020 15:11:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596751899; cv=none;
        d=google.com; s=arc-20160816;
        b=NpucpVg1JQFQp8CIGVJMDpwqRI7gNJJc21ue85Fkh3fZAHQo3fsLYYzjyw0TgRk+/X
         NMFjAXbvpcUk+NTLMYjUjq/QRTTrLeuQfiKcz0H7Y0aJ9/cl20cnYFniTmgvu/6qdJOj
         59DNHs5uZOHqzJFkvlduXVpSuMVnVnAeyFRUNQbMjNIGULA4XLzcYeaCF4MfUw7YxOji
         KVHldkIy5vEgi0kw4/YiirZ8eOHZmbga6BiSZ2uYGk96iB52sMvqh06cpugedwk+ATpo
         qQiINSAUf5DmznJjms5wHD9TfZ3U0SfrS10edf5eYQhXXPeatqKKat9+c9TroThevmOo
         Y/sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=LP3eXKkhQT+uVGZyZBVGAcBptR0qjU15+7WUxkvMxZA=;
        b=oUQBFlh8yG0u2HBHYTjp0r1v0yRbscTqChcX8lJQzLDiUMrMCD/81u7dr7Rfgtyh9i
         lsoRCNNS7JmEs7lKeHBOUotCsFfQmwwQ6ocrMOFsrHIQiP7uu/mMPM2NePmeDoc2frvp
         o7ngk/SLPADP4sWr4XeGRLSUiRVY5jhtGGvk1ZiCY5QBICu6QF83ViLn/D+yGDPP/gaH
         DrK5rF1X6De+Su2yBrGRMBOQmZh4wiWe5/4gVo+CCXYHod1yS6Lcb4FRPoR2xriJsVRs
         AcwBy4g0GauHs4IwmAc8YqkyrPq1n5LGrqlFy44V81vTsRxrI2CKDQQaP0Z+1CudbkUI
         9yYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=RM9tinec;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id n129si554151wma.2.2020.08.06.15.11.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2020 15:11:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>, "H. Peter Anvin" <hpa@zytor.com>, "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
In-Reply-To: <20200527135329.1172644-1-arnd@arndb.de>
References: <20200527135329.1172644-1-arnd@arndb.de>
Date: Fri, 07 Aug 2020 00:11:38 +0200
Message-ID: <878serh1b9.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=RM9tinec;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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

Arnd Bergmann <arnd@arndb.de> writes:
> When using the clang integrated assembler, we get a reference
> to __force_order that should normally get ignored in a few
> rare cases:
>
> ERROR: modpost: "__force_order" [drivers/cpufreq/powernow-k6.ko] undefined!
>
> Add a 'static' definition so any file in which this happens can
> have a local copy.

That's a horrible hack.

And the only reason why it does not trigger -Wunused-variable warnings
all over the place is because it's "referenced" in unused inline
functions and then optimized out along with the unused inlines.

>   * It is not referenced from the code, but GCC < 5 with -fPIE would fail
>   * due to an undefined symbol. Define it to make these ancient GCCs
>   work.

Bah, we really should have moved straight to GCC5 instead of upping it
just to 4.9

> + *
> + * Clang sometimes fails to kill the reference to the dummy variable, so
> + * provide an actual copy.

Can that compiler be fixed instead?

Aside of that is there a reason to make this 'static' thing wrapped in
#ifdeffery? A quick check with GCC8.3 just works. But maybe 4.9 gets
unhappy. Can't say due to: -ENOANCIENTCOMPILER :)

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/878serh1b9.fsf%40nanos.tec.linutronix.de.
