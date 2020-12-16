Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBLWO437AKGQEIWB3J3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD532DBB21
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 07:20:34 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id i16sf10466848oos.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 22:20:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608099633; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vuj7I3a/RNu3K6RraQNVM5HTG5PDWxpibmRpPriW46Wjf+exWd+PFNIoZg48oIJhrN
         VwDztPO8af3fW/7keiadcyHuC+3g4OUTqV321683dgQ6hyE1zwbKTOTbLRSU2uRx3GQ2
         AE5D0rsFqz/i4hGxlSqFKar0SUxOhVkd95fX6e29QAshU/DAafJVsRi0l8/E8VldM5iu
         K3BfpWHgNY15yng5ReG4BFEV7tECCtpy8t6u0E017FN3Ro4U3m3bBy0kzbD1dlvX4Jyz
         ZwPJfS7jKJY9WV0Q+3KKcc3vk5dULI+R4RUMInOJnO3NozAxn9V+oUIgZ7puHfiUkci3
         ytaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=KZ+akl1S3oWFNT6lHb+nQ5Dt6uENqPrhUiawtVyRrrs=;
        b=jbg6V8JAO0sFjiBfFRE7H4HMnaX4JUTzJ1uXUNJPwXRqONOvnSC/ON6iTdSXzwuVt7
         OhyMZX/INOLXu+jgLGXlJhpok14ZS9TYTYeg+4K7DFLCRvPgIhpv2rrxCFWfPeeAdTjt
         2JIvPe0Dsc1qVZpFHP3Fz0zo6zyByb5tM5Iwk9ajw6skP9WinMWxjLkHSNs1Q7PcTS1D
         TvLc42LK+WWwtHBEGSFjKbQjTzfSOQyHk7i8aPrwCRgOBch79xfj9BGZUKyre859IpQZ
         Mvz31p9K/p5DtV1KiDSe8u9BInQAYqNXkkJqHhfyTjJwlDwMWlYiWypQG+NI71SGKEZz
         mJiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Gx6OXDgd;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KZ+akl1S3oWFNT6lHb+nQ5Dt6uENqPrhUiawtVyRrrs=;
        b=NseF8+4AJetHl6PMlsWbdCxeLBKbbSW+buglLv+Z5b90e3h3+d802sxedziSAuh6xT
         y03VLpDDcuM64Fy2vJfqpIV5rIpmHnoKqngb++ws36nLxdIHgejkZVk9srxn3UTRsFmi
         NnwGbabTRvtlDoNdzF4b7BMFEZqoUj6vEHfeFDHsb4I4VP5uXQr+IvxITMyVZWLIuhU0
         d1nJ9kf2NYMmHOZr98AHYEB7Fs3+k8S5N39EBuwUuVdfOCFQqhmb2tudvsnWIq9Sdh13
         +F0TjYiau4JH+uZazeEvU9tHyQI7AoRYUc3hH3YD3TuylkeERa5IpMUyPIvS1gVdTo2J
         4UMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KZ+akl1S3oWFNT6lHb+nQ5Dt6uENqPrhUiawtVyRrrs=;
        b=ZNAtH9TqeCdbHj6jZAtf3vrQ89ZQ7FZ7B3Nak9eWYx+iccE+3wTaooZc9JOE+pnKkX
         /8LNYq7HBJJJnoTv+8XTTfHRYlrvH7F4ecoN3YDF0KdsjsSB8lUZO8S6ztVIAdgQeq+B
         p11b4YBkHm3+oVcNc+mqit3N84zfm7Oplie4xQdWxQF8dLq2gEXVYdr8TiLdoFheYN7v
         //PKYTZwLkctTzFCJ9k26SJUCh64+EUFyE8CrW4yMwC9jQssN51/Gn0vJS/kFypMo2td
         sYxPyxUNMtErYgeltWuWbvGgfNh98Guo4QhxXD5++3Y1BNhaQz/JoV3uyrKUEtQ58E01
         Q52Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZwtlkfZ5xh1xOJGnyWlP6PrJLOTScP9bb7Gasthn1WJbe9yiQ
	HkL5Go1w+NU9a37zsYOCjW8=
X-Google-Smtp-Source: ABdhPJzeUBQ86/Q1aqIVoHxM6nx+LD0L7em3aHVJk2+KRC98krhlR6XASRJ8s9Yzrblc1RgHM4CuWw==
X-Received: by 2002:aca:5253:: with SMTP id g80mr1278585oib.98.1608099633239;
        Tue, 15 Dec 2020 22:20:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c8a:: with SMTP id q132ls5752091oib.0.gmail; Tue, 15
 Dec 2020 22:20:30 -0800 (PST)
X-Received: by 2002:aca:3cc5:: with SMTP id j188mr1307035oia.100.1608099630073;
        Tue, 15 Dec 2020 22:20:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608099630; cv=none;
        d=google.com; s=arc-20160816;
        b=YKEyMd/8PHrnM4W17QHvceWKGand5o+adqJILKPKyR0LCyaO3LkU5GkcKzXh5eLW76
         T4lOW83lb6uzMK8+fOpj7YrkJXf4azMEcpwA1sSoRUEPQbQWtuDpAC7vyYgxFB73A/dx
         +xXVKwwJM2qzRRV+m9ISbZm61kqalAYpCAeUbtRXHAWGV8kJRYYTR+6kxEDzmQ/YbjBr
         xteTy4yhwqS0LGtHeRVnABo6FLfpWrfpPXihkynSMikte4zhD9HLREag54N29AM2dpqV
         biEQzuWeDxEnhi5gZqipaDvDl6mohYwiGglB1qHuD2mD8grc6bu4Vf65rY63/bJh3H8+
         FnjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=6pI3W5aqoviNIdAK6AlX95XTyAmFY6eJRLasDg8LFA8=;
        b=pmYWOS++1L+MWQwPnIqAqbzt1x7icnExY22huKJQRefmIe/dxYlT3dzdmFcG4DEcdZ
         eTFxd74V1drDeSV0Jjk70qB4MHRYUB2yqLVcpSWqXj9EcfawOp9nwlzL+Lo4s6Rtuv8C
         /kZ0ECq1ffq8t80cxz+3sjXia1yjC8R0eCIkB41NgOjEqIv9hejhezl4xyF0q9e/POiH
         thHZCACDMxl0AYyN7K8jadX+6HrZ8SOaBNP7Xvw7o0umc+2SanFsytaVyUZMBm1TQdae
         5jitpsEFFyeLdKhdNaty1C5AuIc7VraYSWQSpGQaoodWvvEdGy3khCrJZAqwpmjiTv/f
         1AbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Gx6OXDgd;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id f20si61940oig.2.2020.12.15.22.20.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Dec 2020 22:20:29 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 0BG6JqZr001359
	for <clang-built-linux@googlegroups.com>; Wed, 16 Dec 2020 15:19:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 0BG6JqZr001359
X-Nifty-SrcIP: [209.85.215.182]
Received: by mail-pg1-f182.google.com with SMTP id w5so16126699pgj.3
        for <clang-built-linux@googlegroups.com>; Tue, 15 Dec 2020 22:19:52 -0800 (PST)
X-Received: by 2002:a65:6a16:: with SMTP id m22mr32080061pgu.175.1608099591440;
 Tue, 15 Dec 2020 22:19:51 -0800 (PST)
MIME-Version: 1.0
References: <20201203175551.573123-1-masahiroy@kernel.org> <CABCJKufyBcN-foh0kj5kUsn-wiZMJ_a8ZjB72jaTmN2GEVzVNA@mail.gmail.com>
In-Reply-To: <CABCJKufyBcN-foh0kj5kUsn-wiZMJ_a8ZjB72jaTmN2GEVzVNA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 16 Dec 2020 15:19:14 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQmSOhGqB-MRnpxVXPF0=cftvZGWrgRZtjcxCOX7E+ZoQ@mail.gmail.com>
Message-ID: <CAK7LNAQmSOhGqB-MRnpxVXPF0=cftvZGWrgRZtjcxCOX7E+ZoQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: avoid split lines in .mod files
To: Sami Tolvanen <samitolvanen@google.com>
Cc: linux-kbuild <linux-kbuild@vger.kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Gx6OXDgd;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Dec 4, 2020 at 3:46 AM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Hi Masahiro,
>
> On Thu, Dec 3, 2020 at 9:56 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > "xargs echo" is not a safe way to remove line breaks because the input
> > may exceed the command line limit and xargs may break it up into
> > multiple invocations of echo. This should never happen because
> > scripts/gen_autoksyms.sh expects all undefined symbols are placed in
> > the second line of .mod files.
> >
> > One possible way is to replace "xargs echo" with
> > "sed ':x;N;$!bx;s/\n/ /g'" or something, but I rewrote the code by
> > using awk because it is more readable.
> >
> > This issue was reported by Sami Tolvanen; in his Clang LTO patch set,
> > $(multi-used-m) is no longer an ELF object, but a thin archive that
> > contains LLVM bitcode files. llvm-nm prints out symbols for each
> > archive member separately, which results a lot of dupications, in some
> > places, beyond the system-defined limit.
> >
> > This problem must be fixed irrespective of LTO, and we must ensure
> > zero possibility of having this issue.
> >
> > Link: https://lkml.org/lkml/2020/12/1/1658
> > Reported-by: Sami Tolvanen <samitolvanen@google.com>
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  scripts/Makefile.build | 12 ++++--------
> >  1 file changed, 4 insertions(+), 8 deletions(-)
> >
> > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > index ae647379b579..4c058f12dd73 100644
> > --- a/scripts/Makefile.build
> > +++ b/scripts/Makefile.build
> > @@ -252,6 +252,9 @@ objtool_dep = $(objtool_obj)                                        \
> >  ifdef CONFIG_TRIM_UNUSED_KSYMS
> >  cmd_gen_ksymdeps = \
> >         $(CONFIG_SHELL) $(srctree)/scripts/gen_ksymdeps.sh $@ >> $(dot-target).cmd
> > +
> > +# List module undefined symbols
> > +undefined_syms = $(NM) $< | $(AWK) '$$1 == "U" { printf("%s%s", x++ ? " " : "", $$2) }';
> >  endif
> >
> >  define rule_cc_o_c
> > @@ -271,13 +274,6 @@ define rule_as_o_S
> >         $(call cmd,modversions_S)
> >  endef
> >
> > -# List module undefined symbols (or empty line if not enabled)
> > -ifdef CONFIG_TRIM_UNUSED_KSYMS
> > -cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | xargs echo
> > -else
> > -cmd_undef_syms = echo
> > -endif
> > -
> >  # Built-in and composite module parts
> >  $(obj)/%.o: $(src)/%.c $(recordmcount_source) $(objtool_dep) FORCE
> >         $(call if_changed_rule,cc_o_c)
> > @@ -285,7 +281,7 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $(objtool_dep) FORCE
> >
> >  cmd_mod = { \
> >         echo $(if $($*-objs)$($*-y)$($*-m), $(addprefix $(obj)/, $($*-objs) $($*-y) $($*-m)), $(@:.mod=.o)); \
> > -       $(cmd_undef_syms); \
> > +       $(undefined_syms) echo; \
> >         } > $@
> >
> >  $(obj)/%.mod: $(obj)/%.o FORCE
>
> Thanks for the patch! I confirmed that this works with llvm-nm and
> bitcode files, but it does still produce plenty of duplicates,

Actually, the duplication does not matter
because scripts/gen_autoksyms.sh line 46
calls 'sort -u' anyway.
Only the problem is we have bigger .mod files, though.

We do not have a good reason
to move 'sort -u' for now.




> even
> though they now stay on one line. I'm not sure if the readability of
> the .mod file matters though. Please feel free to add:
>
> Reviewed-by: Sami Tolvanen <samitolvanen@google.com>
>
> Sami
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufyBcN-foh0kj5kUsn-wiZMJ_a8ZjB72jaTmN2GEVzVNA%40mail.gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQmSOhGqB-MRnpxVXPF0%3DcftvZGWrgRZtjcxCOX7E%2BZoQ%40mail.gmail.com.
