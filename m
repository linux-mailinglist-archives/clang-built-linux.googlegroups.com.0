Return-Path: <clang-built-linux+bncBC2ORX645YPRBPUJQ6EAMGQE3G3C6GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 988053D9725
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 22:57:35 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id c63-20020a25e5420000b0290580b26e708asf4337647ybh.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 13:57:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627505854; cv=pass;
        d=google.com; s=arc-20160816;
        b=twahjoWR+lCUUZQYT7G7Ly3TrZDYbqAuZ467gJ+S+OatjP+6VHRw0QhbVtouyoO8oC
         E2+sBvcRoZ5va1uOBuBJ0wvdw7AiKtzgGRJ5zg1qG1Op9LC3v7lr9Ld3wUG2Qwt/gk44
         AYa2VFGTKJO+7fp45+dEFESXupgv01AFoUaR5QQS8v1x0yarOSXiGZKOOpoCozQEsylV
         63NKeAit3okvO+KSjZMA34d5FzDdHvdp5GM9fC5z9ZrXaVHTW13tbrUjR0gXLBC+nAvY
         gCLuk2WQggDSambrTH3lAsDDI+qCnJLpI1Q0Z8xqwxQR1PbID6i//44WuxfrK2igjZUf
         Cchw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YQcmDyOGsSqAhSVJQuDz4DgE1k9zu7AWs1YjXp3Q8Sc=;
        b=KFa9Y8/yepwSM66/hbFq1+wQNqSDoggfq5peH6b+p/NVhTdlY9tMDdS6b567vykmgu
         I39iSrVzvp3RJPv+H+Qcy+ZT3DAk88JpHxKrbRVHL8oYT//9aLioV+vI0Avv11Xd0jVw
         zHuWkUGd45JrKv5M7tOGQMeMqM6wYnJT6dabsdwWE15U2NsqNQh9vujH2SsiP9SpYmD+
         iU5BPbkotGR2KnH8o7r67TycVEUpQ8G8qQf9R1T9HiD/cgw5ZugK5OOsJkKxapHtYt3Z
         /23RFa9EQ9jgwhrb/uaZyB+Ga6Mk326V4qezP5310wIRpODLVS7O8eSPRP2Tebg+9rqc
         yhvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jYhXLyFx;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YQcmDyOGsSqAhSVJQuDz4DgE1k9zu7AWs1YjXp3Q8Sc=;
        b=MWS5hY4YUaJrGlxLumNfeJFgsGg2wHy2GwDZY38LhZlSwL4mkhkp2n5fKsT+HtSA4s
         nOm74Jpu7h0MGTyROBPeh89qPd1d6oGCLQ0dfkv+3YEJKQoecJ+k1MPZDvSio+gJh+dg
         18fYsSDRl3VwVn0yu7IguR1mKOSKuad5SQMsysHUD2lr9pBRa4ew7+L9yQFRybB+essW
         c0S6kaoETDaKC7EBDLMzZDaqFkZucDsrx6I0fMhQkqrjGHoOaIHK03XLwLCtTOyAlHtu
         QaOabitOamO5APP/pfAc7xdxoPHgEtZZ1hxrodQ6SwbCMUTsmx76cdQY1C09GG6LumG9
         NgTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YQcmDyOGsSqAhSVJQuDz4DgE1k9zu7AWs1YjXp3Q8Sc=;
        b=obQZUXIgz4HgSXik4nBdc8MR7nM5zgw/Xng9w63/+fP4Wg3vArBYfrEtdswiFSBysm
         nxilpFUbcTivk7LhycJN6D1nsng67oWcZdfjv433Rx6iT2xSEyzdQR+/PFD1xkk+PDLH
         B00dBZnRE2smMfKZySQ0109vKWK6Ww/cKA/qK6ggbsc6ySVrWzRS50lSO7AlYj+3FHu1
         zbV2fTsne1u9hslYcYgk4PAe6Qh/B60rE8G6EPYwgZNyNgAIMFaABRCax2K+Ifsif9f8
         DAk4h1GnrcX4zLcJKRC84dwsbIW1wy6rzPSOyeYsJuLmxB2qlh4fB1mkncA/n0YiM4dL
         KN7A==
X-Gm-Message-State: AOAM531WBimFQCXCrnk3sOHTlICAxPj86aveQT7y2+DUpYwEdF3DfjZy
	3dWZ9ImvpOb4B7vPWGO8w2g=
X-Google-Smtp-Source: ABdhPJyC+JbLLApUCiasLuPalcBYWuxKrGpq7dOpPVE8FKBWcZGs7NuBnUw0QQ8t8GTZ2XEBer/g4g==
X-Received: by 2002:a25:ba87:: with SMTP id s7mr2219426ybg.117.1627505854338;
        Wed, 28 Jul 2021 13:57:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8748:: with SMTP id e8ls2039987ybn.3.gmail; Wed, 28 Jul
 2021 13:57:33 -0700 (PDT)
X-Received: by 2002:a25:4006:: with SMTP id n6mr2136643yba.472.1627505853825;
        Wed, 28 Jul 2021 13:57:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627505853; cv=none;
        d=google.com; s=arc-20160816;
        b=V/3TSdKpW+60O8AZa78khlm7eqyOdDs504nkRzKwpSn/5J+53DLthqDCGNGYGOqcY7
         u8sofq24ACh/3vNC/2QhIK2X/xjmibIUrSTPf5x+kBTdHcd07FNHiJJxLAsZu0ZoXEp5
         q/1WDBjhb5tgaOYFWR9sLdE13ZQcmECK+X9NcQXesROvE3dDKShNLORNWbNbNWrXObTt
         0gi32r0ywEyeZhCj2xLQMX1G7/qfDi0DIXjP4ThQBmtpQnZMIcaSucozEXD5jDeQoHAF
         gYaUjB9+i1OPkR9nrseJh8ja/jZvtIVFoZ8lqzirmTRzhl1ItpbiBAMgX6jW/CxSGXTl
         LsbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pTsvjRA7QJHz6Ut4194ILaAL+6Y4KjG9H2G1vntGX6w=;
        b=v114Of05aYNRYtCCIcAbExzKI3ywOJRAq13DwCAy2F5kUoEGwqz0026hNWr4SZXF6i
         1XgVYVA2X0yrfwaHPa7TbWQyrKn2DXzNNzBrYQP2BnZLsY58ov6pShk25mbFSw3ZgA4T
         7eOhvOrNauQ5xsPGAZzMJsL7BJb8/XgxSAuQKjFBgv8yoSxBIFACHrySkBOmo1Xy0+9Z
         CWU/zTlS2pbsXwtX4j591An/TioEgi/nOUt0sFjJ46xig+PtQ/eq0KRn969i823y/mqG
         VfsUM7Fjp8RsP2KGSnUmgZ5B5oxHa0eiyYguaMoE7B+4BuobA0tm1ehTnSe+D0Kbz0B+
         P2YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jYhXLyFx;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com. [2607:f8b0:4864:20::b2b])
        by gmr-mx.google.com with ESMTPS id z205si99976ybb.0.2021.07.28.13.57.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 13:57:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2b as permitted sender) client-ip=2607:f8b0:4864:20::b2b;
Received: by mail-yb1-xb2b.google.com with SMTP id x192so6333217ybe.0
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 13:57:33 -0700 (PDT)
X-Received: by 2002:a25:ba44:: with SMTP id z4mr2130612ybj.476.1627505853191;
 Wed, 28 Jul 2021 13:57:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210727131853.GA18032@pswork> <20210727140618.19130-1-treasure4paddy@gmail.com>
In-Reply-To: <20210727140618.19130-1-treasure4paddy@gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Jul 2021 13:57:21 -0700
Message-ID: <CABCJKudYRiK0KcMHGHeBFcr+Smwa9EM+NFeBpMo_ePqK+zHz0w@mail.gmail.com>
Subject: Re: [PATCH v2] kallsyms: strip ThinLTO postfix ".cfi_jt"
To: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
Cc: Jessica Yu <jeyu@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miroslav Benes <mbenes@suse.cz>, Petr Mladek <pmladek@suse.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Joe Perches <joe@perches.com>, Stephen Boyd <swboyd@chromium.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jYhXLyFx;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2b
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Hi,

On Tue, Jul 27, 2021 at 7:07 AM Padmanabha Srinivasaiah
<treasure4paddy@gmail.com> wrote:
>
> Clang ThinLTO adds a postfix ".cfi_jt" to a symbols of extern functions.

These symbols are added with CONFIG_CFI_CLANG no matter which LTO mode
is selected, so talking about ThinLTO here isn't quite correct.

> For example this breaks syscall tracer that doesn't expect such postfix,
> so strip out the postfix from the output.
>
> Signed-off-by: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
> ---
> Change in v2:
>   - Use existing routine in kallsyms to strip postfix ".cfi_jt" from
>     extern function name.
>   - Modified the commit message accordingly
>
>  kernel/kallsyms.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> index 0ba87982d017..e9148626ae6c 100644
> --- a/kernel/kallsyms.c
> +++ b/kernel/kallsyms.c
> @@ -166,16 +166,20 @@ static unsigned long kallsyms_sym_address(int idx)
>
>  #if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
>  /*
> - * LLVM appends a hash to static function names when ThinLTO and CFI are
> - * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
> - * This causes confusion and potentially breaks user space tools, so we
> - * strip the suffix from expanded symbol names.
> + * LLVM appends a hash to static function names and just ".cfi_jt" postfix
> + * for non-static functions when both ThinLTO and CFI are enabled,

Functions aren't technically speaking renamed to add a .cfi_jt
postfix. Instead, these are separate symbols that point to the CFI
jump table. Perhaps the comment should just say that we want to strip
.cfi_jt from CFI jump table symbols?

> + * i.e. for example foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
> + * This causes confusion and potentially breaks user space tools and
> + * built-in components, so we strip the suffix from expanded symbol names.
>   */
>  static inline bool cleanup_symbol_name(char *s)
>  {
>         char *res;
>
>         res = strrchr(s, '$');
> +       if (!res)
> +               res = strstr(s, ".cfi_jt");
> +
>         if (res)
>                 *res = '\0';

This looks otherwise fine to me, but it's going to conflict with
Nick's earlier patch:

https://lore.kernel.org/lkml/20210707181814.365496-1-ndesaulniers@google.com/

Could you please rebase this on top of that, and take into account
that we should do this when CONFIG_LTO_CLANG is enabled, not only with
LTO_CLANG_THIN?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudYRiK0KcMHGHeBFcr%2BSmwa9EM%2BNFeBpMo_ePqK%2BzHz0w%40mail.gmail.com.
