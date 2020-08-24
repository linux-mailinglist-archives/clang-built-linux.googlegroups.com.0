Return-Path: <clang-built-linux+bncBDRZHGH43YJRB25CSD5AKGQE55GHOMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AF12508EF
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 21:13:47 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id i6sf808190wrs.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 12:13:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598296427; cv=pass;
        d=google.com; s=arc-20160816;
        b=ChFoIzwcW4a5a/f9FmPInPynaYy760AVqsna0GAycah61RIZzdqPrMUey4bFPpp4Eo
         KlLsDO+s4LCkv/Kj8wld7lpGqgI1APr0sHB3XBbnKOHLXWtP5TVmLHsPYX9v2zR1oFy8
         UUpf8OdjyK7nCkB9VfXPD12Kb96uXQHbcqTzvovg9EaEjaHmBrX+e/eFXSESG8nZj6R6
         8qNl894BJGUcRxzpPxStcUdCMGj1NjGq6PMiIUkc4ajySC4Khi3gOLBkdgV5uUUC3wVe
         U6CpceMN3PnOilWboLNyBUnRLafyuErpnRjHM2a5BNEOnXvRqPvMjrxw6IknMqOwuUpq
         FD+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=xiQwlQJzwMzal3Cme6IF7tyIReQzfAGHXvighFn0oKo=;
        b=uUBSzwsQq0FAYib67GNqBQU1kXXNW1Rv3tC/3TdY1n5j5cV88S8dJnvkX7/2FI96vd
         z2ologH9q8Wu+THFQMNHRX/4vrNVl1dvj6Gp7j3qNdJdqr/S0d67/3rokS3zoleoVz5l
         jDiX04cCXuO1P0gia0ajCeR7hkszFpppjkNosVn0h4Oi4iFCWe2c81PxmJvgWz4OWRZ3
         IE/TkSrj6/DX3YW86bfzmYQb7FkzmwuPxUlwBpWtQSmrW9X3Z1BL3sn1Qbzuz5BOt1Lv
         FVRzW9ofKWUe7tkKofhw6HHFHJs6/ni5zZwFyL2OZQ9snRhef31o+ICJ0nyZhqGoNjFm
         d13A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OV65ZGn7;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xiQwlQJzwMzal3Cme6IF7tyIReQzfAGHXvighFn0oKo=;
        b=B/D13qPSonxLpkarryxZMAUZHCPSH/rot3wH+/GoG4CyAg2jsRZaqZFtkPoTGRRRIT
         Rivliaqppqm5TwgzoqLoVPAa3WnbURBymn8GAb4uSv7+6dyXNdyXbmPcRN2NZZQTiTI6
         b3rSV2GcqKmue/bgnFV2yVNAKds5qiF6nScZ8gy+2gn/4ZdEmsrjD995A4Wlhl+Hx2hj
         HNF+7zvE3Pm6qSdgo1a7ZT5VPIYXvaiT2u2rE3QhEfGvvTHvyqKrtQvZLJSdWarzp8qD
         uYsBZQMsW+/hPrlXDAN7N4jGIFv6FjAcXUosC+wnLBO1EiXDad0oEdwujLdCAN0rgY+A
         8yoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xiQwlQJzwMzal3Cme6IF7tyIReQzfAGHXvighFn0oKo=;
        b=tzqmV4ORhyb2fDbEpfCjdcj+rhTfeEb6Zqgfr7iq56wu8Ba6ZifqysbEK7StjDhjT8
         v3AZ3r3mksethZpxP0ZTyHjOmvH93IvHQa/t8Jhn2cSmV3+stvMMZsCxohtKXlCMFfsr
         9i3cAB4161TKKRbvgXbVaAx79fR1poI9RTQVKDvJxjTzG86FDFjPVZ8HCyH5tELcvAuU
         EvXSjYu10K6s83SC25VEwsdFF6B7M2mOZX86aGJ2n610SacebZXIVH56HbdRk3bH35Ap
         n3fAWByHyrS+mof+Gi9xDMZKn5Qhmcqfc5eOMO63LxmPzIpZNS1huglnNoaRnq3ynOfE
         ePQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xiQwlQJzwMzal3Cme6IF7tyIReQzfAGHXvighFn0oKo=;
        b=A4KfUuDh8iDkmm/WVXU2QkBwhDNZPwhLbaRFO32lK4FMHBpAvLt4shLDnEYXJJPsva
         ao3MffNetd2OFRWBVSMmZ0SqSHEVGPggaShiesb4bkqqXCvmowXky2jX7ikbGFlMdvME
         H3sxdrYFN683m3QVdufdX8Lmz0qvGDyV/W3LzgrLA/RQkDCrfXZQWR9b7TSzEw97GABZ
         xQ+VsP8yogOexxBWjyfDH9AX93awVPAeqkez6DkrpX3+x/gFIddd0Qm5XuCllYL2fEKq
         S8BA3MU69qXPZwUKaPMKcttlb3I304CnE7hOHmgFVAHGdgQceGLallFEcSg3eIPr7Yw7
         jiAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533n+lm7a9niVdbdvLQ7ISNs4BCOIHvUrvthTGy8gDZStNjAHkOw
	RST+0k927YWNKgKLFLL420U=
X-Google-Smtp-Source: ABdhPJzGq/DMeUuimQsTuxRciKSqoAZ/J7F8xJcvl483mkci1RTmDOadzk12OxqLqE9htBgOMQNjJw==
X-Received: by 2002:a5d:6805:: with SMTP id w5mr7535054wru.423.1598296427204;
        Mon, 24 Aug 2020 12:13:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4c:: with SMTP id 73ls30341wma.0.canary-gmail; Mon, 24
 Aug 2020 12:13:46 -0700 (PDT)
X-Received: by 2002:a1c:ed15:: with SMTP id l21mr707762wmh.56.1598296426651;
        Mon, 24 Aug 2020 12:13:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598296426; cv=none;
        d=google.com; s=arc-20160816;
        b=Fm52o+fhdnO2auh3AywI8aDGNbGO+yw5FaGlT+8PPE8ytgwm2b+ZAIpU4D7plCdBKP
         GNSrO+aFYT6iJ5eY7iFSlO8ggs8/TUYmtviv+eAf2rcQi0UgZD0D18h+5pIl+B5jLywT
         DuO7QNxm3RPPQmNTjbVqmLo9jN+W5HmZe6MTeJ7xhbA/slT79ECqw/O2oN8LFGR06EnE
         Cx9CzB4KgzXi/Oci2xp1CQo7Nw2GqDlk6TkWRVEppYNvCDwkpiK+zHbk4gO4Mm6FQhSC
         Kj4qke+3hKL58lDQjACnTsPQ+lqHRmfSLU+kx1hH1B4IRxaJ2YrlSCdcKMmN2unu17vd
         ldTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iIo/OMGOZUKbLvU8KZnqtxEPhcYdwmaMGDjLYphHlDo=;
        b=fOiWd4p1xLMFZzRk6f3SaGU8WqWLGda7i2uuNhLYmxtiWWZQ8evRugLY/3oWv/GJWm
         1521F1beF09nzXTG1bjiyqy6SxK07h4WtH3DkNN0pdbZBaeObQoI3YoM2cOmRoF2Thn9
         r74GNN8xoXwxCp81tVUc2JXR54xu9qSnIHonUq6cRlwPtzPuSGbnDs96A9DUq3JTtZhL
         XGBbGe/CNz+62VwsV2D8i/e8M3y3OE5lqTFngr2OH/usD76/IFqwTBo/kZ+MfKs78kUL
         wNQjUOjbT4fRB72tN7TolZp1cg3Dt3IHWBfFm3tr8kQRENU3q1mRYOMS+7gK0NP2+TRq
         ox2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OV65ZGn7;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id f134si34729wme.4.2020.08.24.12.13.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 12:13:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id t23so10974302ljc.3
        for <clang-built-linux@googlegroups.com>; Mon, 24 Aug 2020 12:13:46 -0700 (PDT)
X-Received: by 2002:a2e:80c9:: with SMTP id r9mr2881162ljg.95.1598296426138;
 Mon, 24 Aug 2020 12:13:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200823011652.GA1910689@rani.riverdale.lan> <20200823212550.3377591-1-nivedita@alum.mit.edu>
In-Reply-To: <20200823212550.3377591-1-nivedita@alum.mit.edu>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 24 Aug 2020 21:13:34 +0200
Message-ID: <CANiq72kWaS=8rDQ81cCY3021=1J5yFfJk8FHBQEjhtssRFoVcQ@mail.gmail.com>
Subject: Re: [PATCH] x86/asm: Replace __force_order with memory clobber
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OV65ZGn7;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Aug 23, 2020 at 11:25 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> - Using a dummy input operand with an arbitrary constant address for the
>   read functions, instead of a global variable. This will prevent reads
>   from being reordered across writes, while allowing memory loads to be
>   cached/reordered across CRn reads, which should be safe.

Assuming no surprises from compilers, this looks better than dealing
with different code for each compiler.

> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602

A lore link to the other discussion would be nice here for context.

> + * The compiler should not reorder volatile asm, however older versions of GCC
> + * had a bug (which was fixed in 8.1, 7.3 and 6.5) where they could sometimes

I'd mention the state of GCC 5 here.

> + * reorder volatile asm. The write functions are not a problem since they have
> + * memory clobbers preventing reordering. To prevent reads from being reordered
> + * with respect to writes, use a dummy memory operand.
>   */
> -extern unsigned long __force_order;
> +

Spurious newline?

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kWaS%3D8rDQ81cCY3021%3D1J5yFfJk8FHBQEjhtssRFoVcQ%40mail.gmail.com.
