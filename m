Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB7XI2DVAKGQE4JSYQXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9138D7DF
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 18:19:11 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id z15sf13301308qtq.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 09:19:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565799551; cv=pass;
        d=google.com; s=arc-20160816;
        b=fnwE8G+9bohiZpWw/rlu+XF2XQ7dNXGoYSotSeyb7oeGDhDEEHstOCub3xgK99JjSC
         iIRJ7+5eBH6wEuiLuMv+RIvd92gIuk0uXSf0o3y35CypAdcAIKYKP41vNhU75NzDKOuH
         vHGs2R+2p/olWPgahy5NNT0JqyNtmF8bUFcTIS145A2HXrZcr922JISlz/JAHJXX3/Wp
         GJfIlfpcXJrG/U2YW+Qy9KWVbN5Ik4QjesWtcR+UFgCoTqo6jRl6Z+gAfn8dcaMCy63Y
         6UmUbAXCg9q+y679cTatjV+K8CQWRKSKALE5feg6OrlS2NPo6NKnYuUucBAMq+fsVMXr
         vfYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/Z+RKhuSuXJwkuFBajhsdWb1BDQdSdLT28FrdfYkqfA=;
        b=bfqe2AqtV46SII7AmTUXtRpSmLmXdY96tFaB2zroup0RacxVDU8YWbVIaf1pwqdpvr
         DDOvbHZ+bLSmmtzAa2/MmYCIgwiA8nR/QHUUvQsWIGCqtev9hOjDY0/NicD/lX/It4qM
         Pv1v8D0MenOKikJ6pKB5v/Oz0tKiUsBAo3GQWIIf2VoEHeEtoL5UeQ6aAwpLpwjysv7n
         3yHpcWt6rOUfx4/qaT/sSkI0TAF1m3xZoyG/YC+m2E/Q3llJlzIfbZq0ULQgVjkzhKpm
         rLl43md7O4E8yNy+tSCGGtL1WnDezCEm6/2s97RSjI+ylgxO59Mi/IZ+ydNCMw14vc3r
         nn9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Dls/GSsn";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/Z+RKhuSuXJwkuFBajhsdWb1BDQdSdLT28FrdfYkqfA=;
        b=egu5jnkTfubxiLXBOLHDbH7KDWyhkIPgrk5M2bq5PR8a8tGNy5MyIYcBGOZnYkQVxK
         BDZ4o5cNU2Z9UMoHI6od1BNXigFRyBOLCDPYO04namwdWJSIjWVcEg5qXQHD//+vwwYt
         pLYuN5AVI8XdIyjbHqpR5TUxz5UUSDKkfvfguhW5VernzI37czkijx49onPBV2zAE16C
         QH5wFJJ9/Ngn7WmR1LBRoXXbcIYNT7m0wL4uWNLkmTv4zlOFaSio+jQ0uSpWhyJCAzJK
         /CS0VwKii2c5abbvyTLn+8M78ToqGu4nRRKlh5AF29zz20hs8JoOuT1FbGUNqWC/gCK9
         dtDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/Z+RKhuSuXJwkuFBajhsdWb1BDQdSdLT28FrdfYkqfA=;
        b=eb8QeqZau9OARSDpZzR7yn5YxBeJjcjuz5i3Xsxtk0uWf18jdg8m02YjVbhM6LLf4o
         6P+rIzKzvRztU2e4A2xbnKm4KVF0MsvjbwHyhXZljnYKHZU3UQ+GdW7ta9lySM0B4/x7
         T4mrlwxj449rxkK2EqgbZ9nGkxUp/kMwF4bYMtbWk7iiRZEVL+ADeGLMjjZfa2+0Npni
         s6TmCHy3FldOfL1JouPzXWaxxwVn01nDmu37IlBL06+pBhZpeZA5Z6qZ0CrZ8lyZpGTd
         N76X0q9Kf8Y+dyOZFGISBLf1XI3S2i/84nXmdnTbbrijqo6OxDOYFgmA9cDOfa1zPq+P
         St0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVdBUHiHsNwVY3tlj0LvC9Cx1IIwDpwUgNhjPKW2yASo3/Qj6rF
	Pe5B/Q7JvEeDK/6QR4QVj9A=
X-Google-Smtp-Source: APXvYqyXEtStP7XKgMLZgjXAW11kvIujL+Cf3dd0o5fZxOacizrLWnoblF6B229lBxxt5TpRPrNtEA==
X-Received: by 2002:a05:620a:151b:: with SMTP id i27mr247623qkk.78.1565799550659;
        Wed, 14 Aug 2019 09:19:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5502:: with SMTP id j2ls798244qtq.14.gmail; Wed, 14 Aug
 2019 09:19:10 -0700 (PDT)
X-Received: by 2002:aed:2ca3:: with SMTP id g32mr121158qtd.359.1565799550394;
        Wed, 14 Aug 2019 09:19:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565799550; cv=none;
        d=google.com; s=arc-20160816;
        b=Ar/jqpsgv1uuAoliwhIjaqJ4CVgLyt7xscqeVi2QJDI0Kmc+uHMImw0qJ9KMN3NrJE
         e+2m6Ymo/o83OkiVs67Di9YiPo4VHTd4ofzLZfX8p/5ZfJWrzeBsvlCsDEz6yxnDbszX
         2Zx1yC07hQgZdz81v8mEb9+HN/eygzEp3n4cOm6TVIQiExbZ0lnyAZM3/XS+8D8ej8Bo
         Ju3KQkMCuJjqRvZ7FU5whugqNMx1tbAa+C6zQAYhm+gvC8hb/Gu96rI3K3qUKE0ODi84
         jqVsLuUKDtNkm6X+nOK5x0F+BAb/3Jvpqetljy98J0r/i3LbvE2ChhVraVCDRTCqBjU5
         vFug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ai9Gw83XDKXiD/DpVtkSY17SF3ZN15N+UvF/qozwYAI=;
        b=yzlD16V0kDQWX8wgTkNKcOnSuFbIK8YeMxwq4Z641JmQ6UpTcQs5ivOUpKbpf9+kxi
         GwGgnBhdR7ppY/kDPGPzOxi7TbON6HeHU47XAI1H65FmdP/A51jL+pNdxjgYEBvH6FE1
         PKgpt2QI9yp9AzuNJwvbI4KFY4K6hFCpVvm+4jdLrU5IAPJAOBjXr2LvWHfE2l5YBWdy
         HaYAgRRcPe9KsrAaTOFezA07miZI+ai53jGeCgZYlyu366ev3n/GQq1IH7R7QpldWG2d
         Vh6M+pR/1p+t9JfPLv/XkTVarXZHbuYEwgULTMLLbgHMP6ddHrGaMmyc1fhMX4ybmgYZ
         bZyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Dls/GSsn";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f22si16762qkh.5.2019.08.14.09.19.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Aug 2019 09:19:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D42C92083B;
	Wed, 14 Aug 2019 16:19:07 +0000 (UTC)
Date: Wed, 14 Aug 2019 17:19:04 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Peter Smith <peter.smith@linaro.org>
Subject: Re: [PATCH] arm64/efi: Move variable assignments after SECTIONS
Message-ID: <20190814161904.55jgaxnhd4ujyh2h@willie-the-truck>
References: <201908131602.6E858DEC@keescook>
 <CAKv+Gu9fEAG3CqmORyO2X_Uqse09nnXEQiB1kTL-xBqLWsy8Xg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKv+Gu9fEAG3CqmORyO2X_Uqse09nnXEQiB1kTL-xBqLWsy8Xg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Dls/GSsn";       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Aug 14, 2019 at 07:14:42PM +0300, Ard Biesheuvel wrote:
> On Wed, 14 Aug 2019 at 02:04, Kees Cook <keescook@chromium.org> wrote:
> >
> > It seems that LLVM's linker does not correctly handle variable assignments
> > involving section positions that are updated during the SECTIONS
> > parsing. Commit aa69fb62bea1 ("arm64/efi: Mark __efistub_stext_offset as
> > an absolute symbol explicitly") ran into this too, but found a different
> > workaround.
> >
> > However, this was not enough, as other variables were also miscalculated
> > which manifested as boot failures under UEFI where __efistub__end was
> > not taking the correct _end value (they should be the same):
> >
> > $ ld.lld -EL -maarch64elf --no-undefined -X -shared \
> >         -Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
> >         -o vmlinux.lld -T poc.lds --whole-archive vmlinux.o && \
> >   readelf -Ws vmlinux.lld | egrep '\b(__efistub_|)_end\b'
> > 368272: ffff000002218000     0 NOTYPE  LOCAL  HIDDEN    38 __efistub__end
> > 368322: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT   38 _end
> >
> > $ aarch64-linux-gnu-ld.bfd -EL -maarch64elf --no-undefined -X -shared \
> >         -Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
> >         -o vmlinux.bfd -T poc.lds --whole-archive vmlinux.o && \
> >   readelf -Ws vmlinux.bfd | egrep '\b(__efistub_|)_end\b'
> > 338124: ffff000012318000     0 NOTYPE  LOCAL  DEFAULT  ABS __efistub__end
> > 383812: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT 15325 _end
> >
> > To work around this, all of the __efistub_-prefixed variable assignments
> > need to be moved after the linker script's SECTIONS entry. As it turns
> > out, this also solves the problem fixed in commit aa69fb62bea1, so those
> > changes are reverted here.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/634
> > Link: https://bugs.llvm.org/show_bug.cgi?id=42990
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Although it is slightly disappointing that we need to work around this
> kind of bugs when adding support for a new toolchain, I don't see
> anything wrong with this patch, so
> 
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Yup, it's gross, but I'll queue it with your ack.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190814161904.55jgaxnhd4ujyh2h%40willie-the-truck.
