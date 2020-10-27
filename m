Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV4L4L6AKGQEH2MBEJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEAE29CA6A
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 21:40:56 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id i13sf1233361oik.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 13:40:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603831255; cv=pass;
        d=google.com; s=arc-20160816;
        b=KiY0i5kb27tl5eoPzx/7AbwJjeQjZYi1X5YZUbaw+y/X6tZWhrwlwES9hUNW13z2iS
         g5liZvIGW5eSBBSR3CTDnTKzhPLPGlnF/TYMdqEarLAq5cyCwFf2PqHml13duEMDWQKD
         KD3Yhkq+vQb+vEWZ9Atb0F/6S2FxuO8LtAqvFpnJjbFI0WRExV0Stcc0XtWb1DcuA9hD
         oF3zKeEMpGl0vV21yfK1h5lNnN7f418dekbef7Tiqv8TkJc5684g1tp7iw7WhbclXrfy
         SlVSk4Ok771Su1jxSngBIdvWNrK7slY27v/6lcMdFRE6ukC94jsd/mWpS+JLWvllqMR1
         +eDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=SSM7kmptPMY0iK3IuBeeeNRRaImfDeoMO6OwbK2VK4s=;
        b=Of0zUJW4Qbc0VQs36JjfH08HVOkewdG21ascERFBVGKQNQ+dJt6dOi4WyOurvD3nbs
         erTBHH6+jmtrmvNruzK3INHYd96O5zC2dpakrSNEdGGuiKZcq2R0xfgPL6ZppE4wGRcy
         jWzLXbsCol6k88TpRrH5gEe48PoQsH6u99Tl1jSiKNfqLYQfpgel8OKPFnV1qZNTc38U
         RsZd9efySTslZ+WzsJEEWJYo7Mx3pTanMviPkUbd03jdtWuypUo/HuoxpPWUGyCZ6nLW
         E67RY9WHNhTDp46P7BUwGMhlTF1BDZbo6loSkh31zLtAgSZQRzXA2/HpfHzo4iRWvIFs
         PFyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iRu6J6h0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SSM7kmptPMY0iK3IuBeeeNRRaImfDeoMO6OwbK2VK4s=;
        b=FdJS8V7WFE0edzIciTfNA1YiV5EPgnUn5bII1R4wwvpmInUcuL1waAwJ965HM2k2Xj
         qidCWo925nHtTDbp5lEDl0pFgGWtnFnnQIM62w9cQd4150GpC/W6QcnchA9t++05+ld2
         h6oXxZNvWUfpOJge2Udz2qxYg7zx0rnnHMhn7KvPwklp5VaQnk30TDpVKKclWl7kV9Oi
         pVts3MDxLvuckYhkq9/8s1Lius8RJk3rAKfFfaDMh1Di2Se+CT61pORDHS6/smkSo0sX
         b0ODztS3oTgHQo06RpmxEUy2tpEPdYzHWCjVdMZWldVOyUCYSmnd+fAvfWF0Gd0AxvvF
         L7Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SSM7kmptPMY0iK3IuBeeeNRRaImfDeoMO6OwbK2VK4s=;
        b=nsp2QjV4izCAaAXSkT1kn7V4HvpxIdjq8hScRtUW2z92goxmP6Fkxi1YaIz2nSdSkd
         DeN0Kod+C98DFKEWnlz80pXlPn7E4UatsTndBzT34jSukOTTGQejgBGUYKVT0wqGNy0K
         ofkXxDEUgTikIS6gN+5FxvhT7L9xzZ/wYQubHUsj8CRsBetjNEYXtkGZXFwkBI7a8a9i
         aA4JeE9UlQFCYl5lPqa2gnBaGa5z5R3/fLe+Owc0CvE+lNSZn3CW/6Bz8/+U1CI9ifTP
         FUnPOTg0UW42cELjhsbosUky/UWfEa6/cFPy6lw6qNJD4V4D+9jf9hllDOWF1B0sCJU7
         08zg==
X-Gm-Message-State: AOAM532zWi3tx0RJXqSJ3WzOlCussGtd/p9R6kQD8iGJubFwRNFmA0IW
	Laj5s7ChGFqOqWI5d8VPWJw=
X-Google-Smtp-Source: ABdhPJx4OGYOHaiWcwXJlyJVoGATkwL7+xZ2lrO5eN3ePShe6xSNTRqb9U3OAlv/Pw7d5FL+RewdbQ==
X-Received: by 2002:a05:6830:113:: with SMTP id i19mr2689696otp.263.1603831255257;
        Tue, 27 Oct 2020 13:40:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5283:: with SMTP id g125ls780802oib.9.gmail; Tue, 27 Oct
 2020 13:40:55 -0700 (PDT)
X-Received: by 2002:a54:4719:: with SMTP id k25mr2954107oik.158.1603831254939;
        Tue, 27 Oct 2020 13:40:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603831254; cv=none;
        d=google.com; s=arc-20160816;
        b=mbGD+GnZGgAiaAWExbnDiKUxy0DxiUijT8oqC/YxJz4CFdnTKI0zYCsqY4XQnZTDBZ
         G14N9dIa5Cgci/69to/1t17UjyQnT9S2qeDYweYzIMDq+vyziqezwpILl9eUb7GstFAy
         V9paJofmYQwGuC/mhTZHBwgX+aLJ9JmahfA5EsPtdxJJxN5JSVQEeuvUwbwiUjdX6o+q
         lbq/wpoNGv96E1R0YjAnpt9eLIIfjOOC4Ipc4rc2KICz1YWXxLYqe41EwKfqElDJm276
         gPc1iuB2T7TlhjxjGf2CIyRI2r0tICryI5BtI8ssnOjDjwMjVWViLQzlUrY3zYk0zsXw
         uAmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XK2vhDOZfiB4rtHPEukgUGdcEQPpZW+i+EIpmvDwIRs=;
        b=1ED/jHn3xQqzmTV4qbvunwWi1Q6NyzcJ+VEoblU5e/7AmLXyQzKDUiUYizeh7BwWnE
         8JsR6e3v6Pz1P/Cf8+G9K2kZNK0pqlT8bHz2sqhcP2sIowAjjCjIrqSqhyyhfaswijHh
         s/9544CV8aq3XdAWK4FLllS6bjgjRoQFoiJDOgpMccmGFWBCrOYO1u+yHFBJApkQKyEw
         DCR899PKb9O6W3JUSS4YsR//N6TWw2luVHrZ19MwALoGyPKNVmOjNA20TD8qrsgaK0kN
         72qk6t6NnNe38jbIqdPwY42YrBs0lPWKHw8ZXWbhKimFmlPbR90kmG92rn8YLbXLimJ9
         gOAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iRu6J6h0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id f16si225550otc.0.2020.10.27.13.40.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 13:40:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id lt2so1352040pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:40:54 -0700 (PDT)
X-Received: by 2002:a17:902:db82:b029:d6:3fe4:9825 with SMTP id
 m2-20020a170902db82b02900d63fe49825mr3886001pld.29.1603831254116; Tue, 27 Oct
 2020 13:40:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
 <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
 <CAKwvOdkE=ViGOhvoBRcV=9anjowC_vb4Vtefp9010+sC4c_+Sw@mail.gmail.com>
 <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
 <CAKwvOd=8YO3Vm0DuaWpDigMiwni+fVdrpagZtsROGziinjLvig@mail.gmail.com> <20201027203001.GA1833548@rani.riverdale.lan>
In-Reply-To: <20201027203001.GA1833548@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Oct 2020 13:40:43 -0700
Message-ID: <CAKwvOdmrjeLpS8H_uf_cfbOYFvE-ZhOdJQ14o4VoNF8ugARA0Q@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Ard Biesheuvel <ardb@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, 
	Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "the arch/x86 maintainers" <x86@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	kernel-toolchains@vger.kernel.org, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iRu6J6h0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Tue, Oct 27, 2020 at 1:30 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Oct 27, 2020 at 01:17:55PM -0700, Nick Desaulniers wrote:
> > > >  (I feel the same about there
> > > > being an empty asm(); statement in the definition of asm_volatile_goto
> > > > for compiler-gcc.h).  Might be time to "fix the compiler."
> > > >
> > > > (It sounds like Arvind is both in agreement with my sentiment, and has
> > > > the root cause).
> > > >
> Btw, the bug mentioned in asm_volatile_goto seems like its been fixed in
> 4.9, so the hack could be dropped now?

https://lore.kernel.org/lkml/20180907222109.163802-1-ndesaulniers@google.com/

For the life of me I can't find Linus' response.  Maybe he shot it
down in the PR, but I can't find it...Miguel do you recall?  I could
paraphrase, but might be better to not rely on my memory.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmrjeLpS8H_uf_cfbOYFvE-ZhOdJQ14o4VoNF8ugARA0Q%40mail.gmail.com.
