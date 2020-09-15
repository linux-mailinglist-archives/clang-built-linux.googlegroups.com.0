Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIHCQT5QKGQEZVPBJWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CD726AF84
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 23:24:49 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id s13sf1556064otq.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 14:24:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600205089; cv=pass;
        d=google.com; s=arc-20160816;
        b=iHZ3WEgJIXtn0VCr9cdPe0jT4BDWASBnsQiTazeQrLZJcfviBUp+FfLu2l0KHOo5xQ
         /sWrUXfa7C68csbx23lb5vviXaewIEubknXhOwoyRRWY4j4VMIDrVYTIkF94IxyMcgUb
         sfOO35f7BApW5pQJ3nbpqZ4IdJ+UO8bmu0JDcEI39gcFLyrLvp2zQjomm6CMoCCI1jxn
         yD3JLbzm8sazZoTow5Rq/W/6SHi84H4ps4WAKdfsCDcJgx5ZF73JbU1IRYaLBgSoAv9R
         2ZXf6tnrrnZ2zNpaqg1RGee3vrZxiL2uYrpun8m/MwCOZlYaFO5EbaGIFjzktbAVWcq6
         Ml8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=L3gg0qR6YnifLu6cfQu803ROXtMWecs5SFih7SkV0YY=;
        b=AFd+pC/B2KxEFJKuHEzIwC4UJTsRiV7qvpnYdCnr95UR/bLzNCF8NwyJV3E8weuGmi
         jlsjGJ9nXQqWNytkt4nrwB7uFgW3qjcEzYISuKb3ChN68MMhkipxgCbvlvJoMS8j96FX
         +ZfJ8PSjQWG4Pv/aJaG4PnPJTiCC2ChwBPSJsamytd1ltIK69NpGlmqmEf1RhldrXw4e
         oJ4EgxXBSvfRLrA4FLdItW2aaOlgsi8VwEn0qH+J68jWP7RJ4qN9j/h8AK/SFZiaScfv
         rbODlT1wUo8T1pc8y0OYjUd5AOIiCkDNEcoCX+GEPCl+T+zZj/qfw2bS5EwE6PGceZR6
         kqKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wrcnf0Rr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L3gg0qR6YnifLu6cfQu803ROXtMWecs5SFih7SkV0YY=;
        b=A2JDv9MrEuTOBBeXOydobms/ZQ0TLLK/aHexzw8M5hshmnOE7NqnBSD9fFCWorgndh
         RAz3Qbn4KtmLPqYduasNvLsxrwcB6Bwtu+hGudv0sMoWpcnkaV4j1+8NArYfFPf1hsxf
         iQU1fCk9LSyyZttR8S1xghy27XfH/kL1r7R0luC32D7V5PibLbIHU6mLm3wbd4hhKkZ1
         pLxbjtVJVl/a4tWgTXaKZIBQp5ilfgwJHtl2iZZNjbr3VE+AumS3LR7zvqgsEKBqqroT
         u4vP3/qA79ABEW91ezsNA3rLVMfa9ATUszSYsBdNwBxM4qhkv2/rdXzhSsB4VRCfzF1K
         4e6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L3gg0qR6YnifLu6cfQu803ROXtMWecs5SFih7SkV0YY=;
        b=JG0g+u17lJDqEaYpkvf3LEZdKaVgE6DE9ihqnlWWA5moq3iO8M+8JCEtr0AoVSdptK
         dPKl06gZAQ2MY9SaCpi53lS/2uDkMVcKvrFw17e65LgdCpH29hepSeJO4//3yUdIXD7r
         U2K9aIs2Dv8UK/w8LcQ+vMEaD2tNrQ6xr+qsu3pk8x3s8iinybmxvBbPBaBc4v4W67nZ
         wydsMPal96zuK1zvv50AT1lV6biyfGVSh0ltla2V/N2n1wUmnQSbxlAmxP62P59d1gyY
         ln0zyTiN9/u92eBS6TRDRT8b0qlNorZb2CWJWF6ja/XbB9PxHgbeKNzDlbYq7Xpw7JDM
         5g3A==
X-Gm-Message-State: AOAM533i2YwIjNTwd3CDR8rdjHQY0HD3wiyqQUfoGEn80vuVywpiHin2
	sna06+mjTbL5bbE7lULfqy0=
X-Google-Smtp-Source: ABdhPJzj5Y0s/Ort+J+0963NtaAZ5O9UIjjf8h576JmLXQ9YxT4BeU8M2WmzyOO8dfSgkqwkB2FeOg==
X-Received: by 2002:a9d:6491:: with SMTP id g17mr13417128otl.326.1600205088813;
        Tue, 15 Sep 2020 14:24:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2231:: with SMTP id o46ls138025ota.11.gmail; Tue, 15 Sep
 2020 14:24:48 -0700 (PDT)
X-Received: by 2002:a9d:6250:: with SMTP id i16mr15236029otk.77.1600205088457;
        Tue, 15 Sep 2020 14:24:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600205088; cv=none;
        d=google.com; s=arc-20160816;
        b=EMpcyG8a6qln7evusdW56hZkOZ5AvPSrSWWDgg40oQJgBLqEvR5PtUIOo+jj8LSI4f
         O5X6BrF6wTKE68wCVOVHYzCOAoNySmcq+gf75NjJqsoYe0E2klO4DJtilpHJOObi4xUt
         ke2RmBgAqJueBNfe9fRdqaogv7D6wyTyKU189YdlvdCR1/5gUjthD7Y1oj65QJkzmMQa
         sHrBXPah1jQ6og7EgUQyoYR9gGEqlKZgNDYl9ENFZfDe7JhE10y0OtZ0XuE9RBP7Uslt
         tvimA/iSfRkrlSAz13D2VeD+6/imOwnwebBraNTCECgrOCB1pDDUKCtwlxZwdTqBV5EL
         kzcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PTgQ830HVBAbzepwTNVzvx5MvkLEAXf3QpQye9kHzO4=;
        b=XD5biKk3k9JmUWhLbYdd2PJALtiv0iAZeHEPqinaTJhKlDWHwvevSVEzEw/hWrSwxG
         NXRCBN35WyA3Qtf3xP3c5oICICDpQssE03T5I3FdT0m3YYGLCTbMCYmZNmvEqVOK0Tdx
         MpWUQSVgIgifFbaWTVzs+z5lVlqfpLV8SKV4PGGqJBx4n0ugr7owE3YE+XJLNDHnLVKW
         DPyvyJ3ylC2muMS/LJ00cE0j8wSnD/fVlC3/C9QG/fuEQ4Pd4Co5jCBgu6TS+IAwUB3P
         Oqo3tAj5+n1x3zgvPFczMm3Z978O6kOn6vk6Q12wmwVEIBd21CrS8lDVuyVUTkG30Gfm
         WFoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wrcnf0Rr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id l19si1156602oih.2.2020.09.15.14.24.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 14:24:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id c3so2020812plz.5
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 14:24:48 -0700 (PDT)
X-Received: by 2002:a17:902:7295:b029:d1:e3bd:48cc with SMTP id
 d21-20020a1709027295b02900d1e3bd48ccmr4931075pll.10.1600205087532; Tue, 15
 Sep 2020 14:24:47 -0700 (PDT)
MIME-Version: 1.0
References: <9f513eef618b6e72a088cc8b2787496f190d1c2d.1600203307.git.luto@kernel.org>
In-Reply-To: <9f513eef618b6e72a088cc8b2787496f190d1c2d.1600203307.git.luto@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 14:24:35 -0700
Message-ID: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
Subject: Re: [PATCH] x86/smap: Fix the smap_save() asm
To: Andy Lutomirski <luto@kernel.org>, Bill Wendling <morbo@google.com>
Cc: "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Greg Thelen <gthelen@google.com>, John Sperbeck <jsperbeck@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Wrcnf0Rr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Tue, Sep 15, 2020 at 1:56 PM Andy Lutomirski <luto@kernel.org> wrote:
>
> The old smap_save() code was:
>
>   pushf
>   pop %0
>
> with %0 defined by an "=rm" constraint.  This is fine if the
> compiler picked the register option, but it was incorrect with an
> %rsp-relative memory operand.

It is incorrect because ... (I think mentioning the point about the
red zone would be good, unless there were additional concerns?)

The patch should be fine, so

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

regardless of whether or not you choose to amend the commit message.
I suspect that the use of "r" exclusively without "m" could lead to
register exhaustion (though it's more likely the compiler will spill
some other variable to stack), which is why it's common to use it in
conjunction with "m."  As Bill's patch notes, getting the "m" version
is poor for performance of this pattern, or at least for
native_{save|restore}_fl.  Being able to use the compiler builtins is
another possibility here.

> With some intentional abuse, I can
> get both gcc and clang to generate code along these lines:
>
>   pushfq
>   popq 0x8(%rsp)
>   mov 0x8(%rsp),%rax
>
> which is incorrect and will not work as intended.
>
> Fix it by removing the memory option.  This issue is exacerbated by
> a clang optimization bug:
>
>   https://bugs.llvm.org/show_bug.cgi?id=47530

This is something we should fix.  Bill, James, and I are discussing
this internally.  Thank you for filing a bug; I owe you a beer just
for that.

>
> Fixes: e74deb11931f ("x86/uaccess: Introduce user_access_{save,restore}()")
> Cc: stable@vger.kernel.org
> Reported-by: Bill Wendling <morbo@google.com> # I think

LOL, yes, the comment can be dropped...though I guess someone else may
have reported the problem to Bill?

> Signed-off-by: Andy Lutomirski <luto@kernel.org>
> ---
>  arch/x86/include/asm/smap.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/include/asm/smap.h b/arch/x86/include/asm/smap.h
> index 8b58d6975d5d..be6d675ae3ac 100644
> --- a/arch/x86/include/asm/smap.h
> +++ b/arch/x86/include/asm/smap.h
> @@ -61,7 +61,7 @@ static __always_inline unsigned long smap_save(void)
>                       ALTERNATIVE("jmp 1f", "", X86_FEATURE_SMAP)
>                       "pushf; pop %0; " __ASM_CLAC "\n\t"
>                       "1:"
> -                     : "=rm" (flags) : : "memory", "cc");
> +                     : "=r" (flags) : : "memory", "cc");
>
>         return flags;
>  }
> --
> 2.26.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnjHbyamsW71FJ%3DCd36YfVppp55ftcE_eSDO_z%2BKE9zeQ%40mail.gmail.com.
