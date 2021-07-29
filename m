Return-Path: <clang-built-linux+bncBCZ3LGVOUAFBBQ4SROEAMGQE7FVQKEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAD63DA799
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 17:29:07 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id r17-20020adfda510000b02901526f76d738sf2368204wrl.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 08:29:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627572547; cv=pass;
        d=google.com; s=arc-20160816;
        b=x9WMHoWD6bTBah91rbKX/9Bobo9AdN7BoU+RCsV6b5nlNzQWfk9lu93Q7BcLWjNhek
         OpEqy9Zfndnv20RAlRPbPujjMtsXiW/cXZ6Cr/yzQCOyW7R32LKBJuimBK4w+xoqani9
         B36RA6QBkFkxDN15a0VUyywQJuPr6hf9rgTKR7FNDVurPn4h5UyIzfShnPfSFaMgiQWd
         A3Y/NSOAvZJqAK3qQ23QEMCeR3luiyOKjPCpZfCxMm3//w8CCKjoqOxNGuoZf5v1Nsd/
         AYo9phMuEIJCXhJMylfHEIp/Lb6QgkJdj0MNsAtNV9ECUTR6hL4v0W2ERYgT4yEmnlFS
         +q7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=jBygi9HrpGTK5QA91mPZmZ/6nQ2FpmYarHeRc89Oupo=;
        b=nO9/IKSFlxVyMUUEFHbfDOJKVj0gxaJ71o2kEkYFCxvQClmVJQzvP2f899yc1YXqG0
         PvjtgPEH7Ov1FNchL5siPkHMa78T/I6jXbMF5UYCutdW/P0i6lfQ3jXOetdmvn++h0YS
         oNXnhSbBLj6jM0gvFv0Kv0eg35q8jVoo90qovTHOe9jsOjK61Nu/rEg30lXPHW1a3D9b
         avtTBcB1xyUUzJL5F2dm3LWPuVHBLDykDabQ40aKoSeCY1AWd6nKE8AShg3Tnv0T/kNE
         wR0DlfE9SPgdBUVVnJNRv9XHY3wT073seY6sBarunXYZ9/0vlLW43adp+zCVIKUFoFd6
         gxqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MOq7VxDz;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jBygi9HrpGTK5QA91mPZmZ/6nQ2FpmYarHeRc89Oupo=;
        b=sQ6Ehg6GCouXE8d3r6sHX4hub7b46GcBLSvThZjvKA7JScKZ5M4+5hjhDuWPlxVsR0
         REdNJLf1r0OS5TQyNykOdRCuAxCx8Z0sx1qoBjYRV4+LiioByRRQTxBBBHrpbPkTlmab
         IWsH1u+62UUsJPVw77O3tUMhM4W4F0J7JlvE0R+ZWmmysN0xdqs7XhdDavVngh4ar/Ln
         gPt3/qtmVQVhPg1O6uA6wjfqEwgdPkhKzhnJOi/hjNsAYZDW96Irw/z+/h+L2kPgHvYB
         FLQVJmLJ7xYuR98kEH2EtYcgYPwWTRMCfMw8RQLOrPm4GkSQax+qyKG2fPzPku6Je8kN
         7WPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jBygi9HrpGTK5QA91mPZmZ/6nQ2FpmYarHeRc89Oupo=;
        b=TyqM6F/325oO5uWFEsf7H4bg4LbCO4p9j7yMIBkbPBj4UbXgHN7xhjohzFfZ8k9hnc
         6MzU+GJs7mfvPX6Ocws09NiS225TTMZ2le9m9HmJ+xJ6CPmVoDmem+G6dVgYVD/+gYV5
         sC1ZVskfol93U1erhK0IlXtzJHTAMwEth+g9FzxQ+cYgolrc6nxZv+gljuMOzlWkMenL
         4Z0FXEjXmCSeBdFDgy+LbL5zh8/NqEZ/4cfn0AnPdA0mzKVsmYuaYdMGpLKCnqGhjCoz
         GIbm3HleF+ogUHcbdMPByI8eiOmpiVdNleeswz9w++tIDTBIa0siDTE634tpX360SvcF
         gZeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jBygi9HrpGTK5QA91mPZmZ/6nQ2FpmYarHeRc89Oupo=;
        b=U7TBsn9bPaHp10zkXPse3k9cYIiUbItBBKblKgPd+2bFkmZc4lloOpdpxRjZv3ddLV
         n1aNFm9/ymW1WIC9+l9JcfYdIrKMNHI3yR9OPyxxRN4FXI1OfiUsQorYLbVVZaIsmUwQ
         c3rz0qyRiGcPx+Wy0ZjhMELxzkqyr3QCa71DfpUrUrWO0FCRbRb9VKQ64uKAR+nRaYPV
         2N81xdAclbu16hRacP2NOHDSP/7m2LrM/0n7OlBhLYHr4cutwymLqrl+KygpWtvXlRZY
         0BKZKtsqGiUrVadEb4txG0Lspn46H7vFLNf5mXmOtH6wgWeIO6sbTrA1Pyuo/pVT0RVQ
         oAfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Rszx+QJHjoqPfUTQNMr7CtgIF+VFWIZpSgA7n+zAqA+Os1by6
	CJ8968D7hjQEemk0eLRQLZI=
X-Google-Smtp-Source: ABdhPJx2ZMAf2pz36qfu/r0Sw8S2Iocb6Kk/fAovcoAAFYWs+Xc6mN3I4wt0eK9m3O5jEyypUeNO4g==
X-Received: by 2002:adf:ee51:: with SMTP id w17mr5318616wro.279.1627572547743;
        Thu, 29 Jul 2021 08:29:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1554:: with SMTP id f20ls3200107wmg.0.gmail; Thu,
 29 Jul 2021 08:29:06 -0700 (PDT)
X-Received: by 2002:a1c:3505:: with SMTP id c5mr14679763wma.53.1627572546845;
        Thu, 29 Jul 2021 08:29:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627572546; cv=none;
        d=google.com; s=arc-20160816;
        b=FPKSseltUOWb8P4cxYGYqLd43AErWYmVIw6hD6agnwE46lZPyMNfNoS+jSS/87MGbO
         5+TyGXGY9k0uUzyPTBfmxCeHPjFJ8ivLQUc5CfXn94sPKl/OSAZ5eAhQmWNOzqge3Tqw
         pikrBeKub+RYxvYQNTLMFVc6xN+rpavkTNhhi20No883XgrZJIxMUOFnkDNxUy5Bg5Vn
         ASI5NvJlYC580IV5lqdm2AeS7xS6V4UY0BXGRVu5W2u3FpCnjdLxAMP2ezC0+wHqQkER
         yls9io4fANP9Fwq7dqsmwK61sLjn1uYhtLbRH/m3X3PHKQzvGzraZfxIwvS+DDtj6DYU
         U8Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7nsIADi+sxoiZLJPC40+M5/oMBfnY6udDOOdTLFLRas=;
        b=azUsdjyZtw9M1QSlwh1B8sUB0z6VNSOYdo9IfnrO8BfkYWOf/DGK7N2kim7aKNCAub
         wRlezHlRFEMb2NirtpEtrtmf10v4lZBPvQikVfUGH19Qa14BXlOoLMzAn2LZ8Tg58mYG
         iygwC9K0WEyUEBDgjMC75dlfVT7YUIASvT8u8/+XVilkQqyeIYL8PklZNke8KyBzyQ3n
         wuqkWA8BZ5T6GQ4jJ7mGAwzgPXqSf2ucWw8rKNrRPSHKT315O88wVz0P45lEvteuSSdo
         AVBBwCS9XfxikU4pTiNQ90tW/bpQmSQcEmGfwjKmyX7I9sx+7LAQcUEVjdSl1vR/3/NC
         v24w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MOq7VxDz;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id v4si182336wrg.2.2021.07.29.08.29.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 08:29:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Received: by mail-ej1-x629.google.com with SMTP id o5so11417571ejy.2
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 08:29:06 -0700 (PDT)
X-Received: by 2002:a17:906:3983:: with SMTP id h3mr4974895eje.249.1627572546272;
        Thu, 29 Jul 2021 08:29:06 -0700 (PDT)
Received: from pswork ([62.96.250.75])
        by smtp.gmail.com with ESMTPSA id c22sm1365176eds.1.2021.07.29.08.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 08:29:05 -0700 (PDT)
Date: Thu, 29 Jul 2021 17:29:04 +0200
From: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Jessica Yu <jeyu@kernel.org>, Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miroslav Benes <mbenes@suse.cz>, Petr Mladek <pmladek@suse.com>,
	Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>,
	Stephen Boyd <swboyd@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] kallsyms: strip ThinLTO postfix ".cfi_jt"
Message-ID: <20210729152904.GA14619@pswork>
References: <20210727131853.GA18032@pswork>
 <20210727140618.19130-1-treasure4paddy@gmail.com>
 <CABCJKudYRiK0KcMHGHeBFcr+Smwa9EM+NFeBpMo_ePqK+zHz0w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKudYRiK0KcMHGHeBFcr+Smwa9EM+NFeBpMo_ePqK+zHz0w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: treasure4paddy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MOq7VxDz;       spf=pass
 (google.com: domain of treasure4paddy@gmail.com designates
 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
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

On Wed, Jul 28, 2021 at 01:57:21PM -0700, Sami Tolvanen wrote:
> Hi,
> 
> On Tue, Jul 27, 2021 at 7:07 AM Padmanabha Srinivasaiah
> <treasure4paddy@gmail.com> wrote:
> >
> > Clang ThinLTO adds a postfix ".cfi_jt" to a symbols of extern functions.
> 
> These symbols are added with CONFIG_CFI_CLANG no matter which LTO mode
> is selected, so talking about ThinLTO here isn't quite correct.
>
Yes, checked irrespective of the LTO mode choosen ".cfi_jt" postfix
is added with CONFIG_CFI_CLANG flag. Thanks for correcting out,
will make neccessary changes.

> > For example this breaks syscall tracer that doesn't expect such postfix,
> > so strip out the postfix from the output.
> >
> > Signed-off-by: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
> > ---
> > Change in v2:
> >   - Use existing routine in kallsyms to strip postfix ".cfi_jt" from
> >     extern function name.
> >   - Modified the commit message accordingly
> >
> >  kernel/kallsyms.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> >
> > diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> > index 0ba87982d017..e9148626ae6c 100644
> > --- a/kernel/kallsyms.c
> > +++ b/kernel/kallsyms.c
> > @@ -166,16 +166,20 @@ static unsigned long kallsyms_sym_address(int idx)
> >
> >  #if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
> >  /*
> > - * LLVM appends a hash to static function names when ThinLTO and CFI are
> > - * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
> > - * This causes confusion and potentially breaks user space tools, so we
> > - * strip the suffix from expanded symbol names.
> > + * LLVM appends a hash to static function names and just ".cfi_jt" postfix
> > + * for non-static functions when both ThinLTO and CFI are enabled,
> 
> Functions aren't technically speaking renamed to add a .cfi_jt
> postfix. Instead, these are separate symbols that point to the CFI
> jump table. Perhaps the comment should just say that we want to strip
> .cfi_jt from CFI jump table symbols?
> 

Agree, in jest modified existing comment. Will address same.

> > + * i.e. for example foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
> > + * This causes confusion and potentially breaks user space tools and
> > + * built-in components, so we strip the suffix from expanded symbol names.
> >   */
> >  static inline bool cleanup_symbol_name(char *s)
> >  {
> >         char *res;
> >
> >         res = strrchr(s, '$');
> > +       if (!res)
> > +               res = strstr(s, ".cfi_jt");
> > +
> >         if (res)
> >                 *res = '\0';
> 
> This looks otherwise fine to me, but it's going to conflict with
> Nick's earlier patch:
> 
> https://lore.kernel.org/lkml/20210707181814.365496-1-ndesaulniers@google.com/
> 
> Could you please rebase this on top of that, and take into account
> that we should do this when CONFIG_LTO_CLANG is enabled, not only with
> LTO_CLANG_THIN?
>

Thanks Sami for pointing out the link, will rebase and refactor the change.

> Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210729152904.GA14619%40pswork.
