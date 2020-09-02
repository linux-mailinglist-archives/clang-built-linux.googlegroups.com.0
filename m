Return-Path: <clang-built-linux+bncBDRZHGH43YJRBOOEX75AKGQE6RJAVPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D18B025B39B
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 20:19:37 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id 33sf33086wre.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 11:19:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599070777; cv=pass;
        d=google.com; s=arc-20160816;
        b=hD0BWBQgnuiRmhyGPksf6JPbyc0vYrQr3QazNw8SvHmXqKwfw0KvYUneNT6yPp1cgM
         Sclz4P8aUmxdwVQ1o4tISMf9FKTLM9/YzyaZX7a7rkEGSHellNIHZH6EEVIO4ikmW79H
         1f3dABz2VpIMFZjRDmClQ/Ix6eGnSiDbbsadwKFSrEb3JT54O8BjIBOMcWort48xWh1J
         lmpdQG7ial6JimH40Vk2x8NF7cqa5TxffwgCPD1K1Sk8H5HYKNIaUh3MIXva0L43Rqw+
         wdWildTgCsYxaXipB70D7ooQ0FLX4FceGs0CVISc8T29Qa5jax+PElYQ/gs62sjqkvLO
         MmcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=HLmXkY3dflJTnYsGhtJ70n8oNF4VawdaCUOOvli56Lw=;
        b=DII0jBTJlQla7tjLRpnDpLKc4LoFW3b8Y+0FMA+dgH+gjtf4hMo5uu9fcVLvEoDZUA
         YP6b/pn8Lv9zKTg8UQ4nK6BwBzGzzUPnqvtwopmAv5WtDAdv1di6hd6O+sIvQMY8h5u3
         Cf6nXK18SSOfKkyn6A7oYCUvs9XxTCTUff8K73aN5Ck6xP7eXX86qFIyYXpT7JZ4thcw
         pupgC9riZ2JXCjF4MveJxbSxUu60HRqrUq6Rck7jZ1IFn3XibQzeJIl8R+oPDYkBnBpu
         eos/O/obXwKgmgIAxqbFZkZqrqjN30RsiEAlyOkdAHMiq/bhLWEDABQItlLV6Nrjrupn
         8m4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S0L8enuh;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HLmXkY3dflJTnYsGhtJ70n8oNF4VawdaCUOOvli56Lw=;
        b=KdQxt116Q6JkSCVCjZcwK+/GCEBDBaz1Dw6NpDrMUXBGQiyiTuEARHqvOkHkQdHqA9
         AkEXyfVSt3xP6/1y6ksyzn5bef0/sQ7qjspxWzvj+WGnrClm8lGdhisZIiP8HKuwXyvx
         3bC64YWDjs8/6w6faUJG4o8+yuL6/CO8j88+L2G9ZBXubKeSI5gu2c7k1UnLehpBnhVL
         mCylOoxe1J5o6WSiPeMYQWtgS/U8j3XWJbquLIQIVHZDRiP6t/xnvdcRmLBHUtCMqmuT
         9UAI/T1aA9iAJ97UqfT2sIU0cw4O6m15U+acvlqUCuMOqknjg4yxpOlzQ89GMRBMpEg0
         nW0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HLmXkY3dflJTnYsGhtJ70n8oNF4VawdaCUOOvli56Lw=;
        b=p50qWpN8EvAyvOdebT0F9MUFhJc/RLq71Nn61TBkchqpubAlu+USPcsnJPmzH9Q2XY
         BFoAQncOMVfExPj7u/g9ElOTw3ASG365KvmENnxj+zdEYJl7yrG4VgBDcPtlpvv4//Ms
         mCPSI6xZ9pekqnpUsE+wvGvsuvgoHzmbpWCkJOrxAuw1SFW4tsnlQO5O5PVRLH64jZsU
         9u+vcb9QXFhswzdaxkm0XP8ME+rzduxYwjhcCuntpuoaYjMvJe+Ph4VR1wpVFahgS9MA
         5VR2Sssd0fdcW3SO19bzkthKwUwDDpg6aJ0nhnSj4Yu76AEAXlEeFjlTkw+OASSlLCqU
         ujSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HLmXkY3dflJTnYsGhtJ70n8oNF4VawdaCUOOvli56Lw=;
        b=F2EoaEHujbScp9azdQzww6s2zItmUf4xpLgPF62ADJ8DAlZViw5EmD9COfYntUNLIV
         5ZbmVu5NaMw8ZcHijWf/BVRjw9cwsHFbTP8PDdCF87/meA0YWz7XMks2b4PkWb6VAFt/
         b/KrGZee/9UEzRel/Z6cd+iM9VKTyQR5AdrfBk0HsRBG9H/Cc82sr9Hcps5wj5WaBMtw
         ruTTYr5JcbrC45o5zLAhaFPAUVMhDQQuvpY6A1UQPKzWSkbbaAUAD8GPXIBKo82XKLeO
         nvZLWRdL3cSLN7yBilMQm+vZAxZ6IzD3mz8r5Qe5RKC55ThxaqB6fcSa+3eKSJth0jW0
         7XGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335Ie7bjNYPfzP4pA9l1BoSu9WNaBQL1XbbrYLg3eykUwLQGVWv
	sL523QtW6CNXNbNd85HicAU=
X-Google-Smtp-Source: ABdhPJyC4HdseOrZmKqon6eNs65t2+Kg3pEnHoU71dlhEUp/IXd4v62W+zvkQhAs+mJDGBFzF1e/pQ==
X-Received: by 2002:adf:ec92:: with SMTP id z18mr6205049wrn.53.1599070777585;
        Wed, 02 Sep 2020 11:19:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls3734834wrx.3.gmail; Wed, 02
 Sep 2020 11:19:37 -0700 (PDT)
X-Received: by 2002:adf:d4c7:: with SMTP id w7mr6808293wrk.263.1599070777051;
        Wed, 02 Sep 2020 11:19:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599070777; cv=none;
        d=google.com; s=arc-20160816;
        b=Ge1o4MGHJHB1+zBr2bKpaJ2Gvo4J/KhSQC6Al12yJnkLojxQP1RhMeoIuRuAsU8c4d
         TwRA5eLhv6jxDB6f71ZaANAojoDc3iwvWrKxDrs2H21unjAqsiWOyQpEumQ2xvgCWMwz
         14g2uliFGS9NK05gl7NZFkAPlgfA9/mPq2/+/9leJ3r7gAPX7c7BogpeYitN7ig7ZOHG
         msmd1LNh1V3BQY2re69isq9sFdy2o9Evpi3aovKIw1VYBy39YJ1iBQatAfGNempj9pMf
         VGzfWlo7BCEEDYZaHL14XsrY4r4zDwVV14vtljVdPbmIEK7qcZiGo+cxjssxCcHuWpvH
         2kJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4UOQrf/1Zuzh+bE0/siV6+xA8AEKujMA/kbnLKMMbYE=;
        b=TQaZq2Gi4YcAHIrcy5FwF6jQ7bRJlACe8FAZgG2qQjJCsszrlHfH92OCmKAe3wOCZe
         jeXSStzrxV4x7kcsox8yma+NQcYwJhe/v1xji8lumHYE+Bjqjtj9xqEd7LPtKDgu0RLb
         V6KXRnpEJOtlna5z95Q4Bf5ww36k1YJLx2NiE5BDJUyUvM/mE4AVF8Ts+fiTOtwtYukS
         RLVimb/LE9JVeh8fW6ppWk88MVWPoKeEdY1UmOL+5L2XC3myznE6N3MUarIdWEdqSXYE
         NlCAVDH8JaLQRal0TNzdEmb2WhD1uU1OqtHdXBfEikw2gCfKK22NSsHgILGVa1clDe1A
         jjWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S0L8enuh;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id q2si16536wrx.4.2020.09.02.11.19.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 11:19:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id x77so351690lfa.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 11:19:37 -0700 (PDT)
X-Received: by 2002:a19:7e02:: with SMTP id z2mr3938053lfc.130.1599070776561;
 Wed, 02 Sep 2020 11:19:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200823212550.3377591-1-nivedita@alum.mit.edu> <20200902153346.3296117-1-nivedita@alum.mit.edu>
In-Reply-To: <20200902153346.3296117-1-nivedita@alum.mit.edu>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 2 Sep 2020 20:19:25 +0200
Message-ID: <CANiq72=jwj0xocJ7iAkntbnHDQphL79XcPREz1qpW0yqrMsz4g@mail.gmail.com>
Subject: Re: [PATCH v2] x86/asm: Replace __force_order with memory clobber
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
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	nadav.amit@gmail.com, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=S0L8enuh;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Sep 2, 2020 at 5:33 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> + * The compiler should not reorder volatile asm, however older versions of GCC
> + * had a bug (which was fixed in 8.1, 7.3 and 6.5) where they could sometimes
> + * reorder volatile asm. The write functions are not a problem since they have
> + * memory clobbers preventing reordering. To prevent reads from being reordered
> + * with respect to writes, use a dummy memory operand.

I see you added the information to the commit message, but I'd still
reword this to something like:

"The compiler should not reorder volatile asm, however GCC 4.9.x and
5.x have a bug where they could sometimes reorder volatile asm. The
bug was fixed in 8.1, 7.3 and 6.5. The write functions are not a
problem since they have memory clobbers preventing reordering. To
prevent reads from being reordered with respect to writes, use a dummy
memory operand."

The important point is that 4.9.x and 5.x *have* the bug and that is
the reason for having the hack. In the old wording it seems like the
bug is no more. Then one wonders why the hack is still there (i.e.
perhaps because we don't trust it, perhaps to support the rest of the
minor versions which are newer, perhaps to avoid regressions, perhaps
only the comment was updated, etc.).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3Djwj0xocJ7iAkntbnHDQphL79XcPREz1qpW0yqrMsz4g%40mail.gmail.com.
