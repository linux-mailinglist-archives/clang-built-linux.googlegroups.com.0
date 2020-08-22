Return-Path: <clang-built-linux+bncBD4LX4523YGBBWFUQP5AKGQE4ZTNP4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB7B24E66F
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 10:42:03 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id q12sf2817452qvm.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 01:42:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598085722; cv=pass;
        d=google.com; s=arc-20160816;
        b=o5aOo1kqgDwJsZ43WoE6/OdKExB3Q2Y4niTjoM9OBAFERA9+F3HV/TGy9J4SQsUN6R
         edbC7vWSaFF99COBwvhdsbroHCARqDU1EmzdZN0mpRVkD89MHmyTaUJSC6IsSHrBwd33
         VVi80NmzUvJPD7g75uN+BFtEk/tBj2S8Gnd94oyw/6PlujOEDBhE6G7Ub1wgh1h+RgFO
         ROWX7360UtCMFnUtjzNIQeb1j7I+SXmgP775K1wUe2D6RRHHnGaPhQdz1jL9hB/myB/9
         acnhXanYR84xJqzyXMKT/xyqyTj8vTFtU+178J7oZp/hcDqfPA/RcdEZZ3Rl30Qf/aaF
         cImQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=B537gdtc9aWDL+wBSu4JOF/+vx/rSM/4L8TE7nyKoF0=;
        b=lIvVZzzCZzhYYUc0U2QlWUl1QIQJgTXk73Dg6F+CYoAwY3NJWvm5WbVmv2wBL95+SW
         cd3jFn01Ocw1pUX9LW0R9xParHQx3W51zmfCKTMm3F3i3KNw+pnjwUlinHmVbvLi0y2D
         HtYGhdPmOR0RpLsXGnO4SDwxtH1JPHpQ66Q5ZQGazULmCJlmq6itNW/04zW4HkNmJaDd
         O8s5F9a0qojGjAqNCrvIcFE1zhK8pw5MEEpHW0FDBcpDAfVfn9rbySo5ZcPd/U+lgxo0
         0yTJJcSla0FOQugh3nK3Egl15JDWLxR5hnzJj9LP+HoxnsXTHBdXEW3g0Di+6qNI+SGv
         8COg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B537gdtc9aWDL+wBSu4JOF/+vx/rSM/4L8TE7nyKoF0=;
        b=akNRVQ666X3wxu5sbXdyRv50WjQlwBoDMndANHJwgBSZdIhUJU65O28jAAL++YsLtb
         8LFMOL4Unvu/+lfueSBsLE0uATTeebAhCLRTv271Q6MJX3Y/94/rdGomSPXp9NCn5Kpe
         13FWoGROK+qx93mP0hWOhn8WzrP82epA5iQoEkpfqZ7a3InLe/2xxJvdT2zg0xTi9aN1
         VjwZDbPgnDdmxgXdmaX3Y1hl8wAXD9h3gnGelmI8Af7qZ/OT3HL/G/gFCcBDcgOwC6TI
         4fcze74Bi2ZWDzRMNW3aAKtGzdo3+sRgqmbFIOxmXZ+UPDRvBrsYonPRgUnVzHVuwdEt
         rQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B537gdtc9aWDL+wBSu4JOF/+vx/rSM/4L8TE7nyKoF0=;
        b=gN0E0Z/qNzzaTPquPLLminlls9RvBP98tjLBBA7VXxt5gsM8j8t074QUjfkpA9Exy5
         dOIXa3Bylfn0uT3u9s4/VcBgcuHv3o3OtXdwoED4HNjJHDnhIMa7Bg0tWXVI1B5OOHUv
         jEdciE0zYIlWOa9+3kjcUMkrSFtHI4gIO9c3IPcCRxL0LVpJ/mrOhcazaK71uoCGWZ6t
         m/wsYmLUNLmo3+cutO9Fb1JD0LvqAa8cnsmJHmT0I8/Mj3O3oGQylqN7NAfg1pK7Y2m7
         p1FMqyFjq3HPhySG2IE4rdO091u7VyFTflbAei6rUykjQpVkUxJ+x9xENtEc1JX6iPFZ
         Q09A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lTs4dZbVerT1yreiuFPYQmNhR1tZFNkOyctJcfLx0ALbqCw8d
	v/CjaAn52UJexZwqZBRxgzE=
X-Google-Smtp-Source: ABdhPJwdZC9n43nYqZlIgHcBs6gohwnTAbp/4bjtQsl5maT0W+JuhUJaKqwcqPteeMAH0Vhm6hbMdA==
X-Received: by 2002:aed:3c1c:: with SMTP id t28mr5943649qte.74.1598085720943;
        Sat, 22 Aug 2020 01:42:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:eb0d:: with SMTP id b13ls1263576qkg.7.gmail; Sat, 22 Aug
 2020 01:42:00 -0700 (PDT)
X-Received: by 2002:a37:afc3:: with SMTP id y186mr6170565qke.36.1598085720360;
        Sat, 22 Aug 2020 01:42:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598085720; cv=none;
        d=google.com; s=arc-20160816;
        b=U6bUavrilUHLr9KA584h48ZAWYQO/Uvw1aEo0Znys/3pLUOxPeF1STVHFEzWM8wXNr
         dFrlmS2EZKeZlN3Vo4nXgB/UcuBAeep2OFb1i6qFQg3Q1sTUAAGA7VlSTUs2uojYYH/2
         JVPdQE/KpD/K6vqR998H6Wm+B5Kbl3CWDEWv6EGHX4pJ2QUcQKdE3qpdfzz1NaOsIKx6
         +bM58sOBUjnF+VMRG/2oxvL92wRQUIvupx3GcZq5TJNPnovh8N/V/Y8rvcl7NZ32TDti
         mtEI9IIDHXvgiaAG/v0nTrkQrrY9rk7gLx4StfiQnHqdOYJRo0b/f5Lj0hH2/WQcftvC
         6Vmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=l2rS6KdH1mqz1o0PDH6npT7GbCr3VoiGm91IrwrfVXg=;
        b=j9otqrsEZcnxRZsfhjrqsMG1NwtQ18k+eTEbHXXJ2S7WB9EkblT/a4ZIeLpQ3gfWNz
         wtk8k7H4m4/XQRZGmSDGrc9pHTeY/KiZ/rcHmHkIWQVfNLlEjkgqQ64euOJBsiLuQhTw
         4ib/WK71E8w3K2BRPAUKO2WQbLZP/mZkVK4f86Z12ozDCl+/iooUGRlYl6eh9aPRROfv
         9AddRQb4MKEscprUNTA+kT1EaV8AHGGA0pasj7X7T12MDAH1ujY4V7qYMA8QBDH8m/Ut
         ElQgiorETk3Zb+Sk2aE99jSR8gPYhT7G0HmhJxMXTw7fN21gpbPNbTPdxjxL9xyww/yZ
         ZQpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id f38si258403qte.4.2020.08.22.01.41.58
        for <clang-built-linux@googlegroups.com>;
        Sat, 22 Aug 2020 01:41:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 07M8fc2M011586;
	Sat, 22 Aug 2020 03:41:38 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 07M8fX7Z011585;
	Sat, 22 Aug 2020 03:41:33 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sat, 22 Aug 2020 03:41:33 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
        Borislav Petkov <bp@alien8.de>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>,
        "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
        Zhenzhong Duan <zhenzhong.duan@oracle.com>,
        Kees Cook <keescook@chromium.org>,
        Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>,
        Andy Lutomirski <luto@kernel.org>,
        Andrew Cooper <andrew.cooper3@citrix.com>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Will Deacon <will@kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
Message-ID: <20200822084133.GL28786@gate.crashing.org>
References: <87h7t6tpye.fsf@nanos.tec.linutronix.de> <20200813173701.GC4295@paulmck-ThinkPad-P72> <20200813180933.GA532283@rani.riverdale.lan> <875z9dioll.fsf@nanos.tec.linutronix.de> <20200820130641.GA536306@rani.riverdale.lan> <87zh6ohm03.fsf@nanos.tec.linutronix.de> <20200821230435.GA56974@rani.riverdale.lan> <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com> <87eenzqzmr.fsf@nanos.tec.linutronix.de> <20200822035552.GA104886@rani.riverdale.lan>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200822035552.GA104886@rani.riverdale.lan>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

Hi Arvind,

On Fri, Aug 21, 2020 at 11:55:52PM -0400, Arvind Sankar wrote:
> Cc Segher.
> 
> Segher, we were looking at gcc PR82602, where IRA could reorder volatile
> asm's (reported on ARM). The fix was backported to gcc-6.

I know ;-)

> Do you know if
> there is any reason the problem couldn't occur on x86 on older gcc
> without the fix?

No, I see no particular reason, at least GCC 5 seems vulnerable.  (The
GCC 5 release branch was closed at the time this bug report was made,
already).  There is no reason I see why it would work on x86 but fail
elsewhere, either.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822084133.GL28786%40gate.crashing.org.
