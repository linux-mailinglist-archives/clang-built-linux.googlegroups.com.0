Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB3W77SBQMGQENVJBUOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 15843366064
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 21:48:00 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id f19-20020a056a0022d3b02902608c8a75e0sf3312623pfj.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 12:48:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618948078; cv=pass;
        d=google.com; s=arc-20160816;
        b=p+mvE7ZnJAyCOEe+PoGicnzdiIHqMt1Ycs4iCH68fO4mlZOC8nWr5BBc4L3e1Ebw6z
         fceuzgkja1WoebGy9BWwYlwtysnqFP8oZmrZCf9q/debJWDS2e5bu5a8Zt4NsSmh64u1
         NQcfYNIwtWTuqwBfXOqej6FESTSK07+6K1I8lEUVhEKYuVviKdzbzfm3Yz/tMfmoh5jN
         b/YQvakd1yzgQnfEanugeE+HXKnJRoIvCpZDIOGRVySzKdxMIc5m9D6+WbjN8EaQDZj9
         tpvGua352I2MmNOx7Eah1FPM6mFb4QmrjE4jbsf2aEz6CIRN2jy83luckRluqdfoAmfP
         NZSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=eITvbhH9fF1sJCzPl9yqXr1kzPuM4o4/4VK5pC5/D0g=;
        b=kosIyRbkOEFTCa1frmdxwXdAYeFRGscOZu/4l6e6wnaMvW0KJrO9MTUA0Uc0CIIHyh
         7wJdMuo9rf22sXsNWMsCNomdte6iCLiA4Jo0YpUB3DfD0/HVv4WL+TIGivRr9FKwkMhr
         aq8lT4h/g5K4+tXdSrZsKIogzoD48n9w9IsADkOIFmBYPSF2gYotn6l9B4qep2+zIQUp
         uE9F6tnzovAQ/Ay8Wrvd//AKStDqBJQNLApwDodudlxQA0RXx1Ejgtpv1eT7XO/5z0fI
         oQQ4bmkSwmghH0qkXwTrX8Wv0Q+ElnB/4OK2zLx0i+sXq8CBudDOJk42WL/hspHZJ+sQ
         Kjkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=X3GK8uqj;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eITvbhH9fF1sJCzPl9yqXr1kzPuM4o4/4VK5pC5/D0g=;
        b=mINQhAZQPzH4ITN1Y5KExJq7qUAotnCJ+OqdYz+BP/Be/1MnNmamO/8+ytnhN1W21+
         IhXO3VduYA4BqZUEm5GAjKPYA4rlkEbSrTR/Q8ebfrzrC95yY2C1oqWrZzyb/x9/+b+j
         oqtCC9mo456JK2+rikypxsfrr/38C91W/WrB3RKbL/dC1q+oPJsCH4i1Rj6cye0uwuNe
         GjOXNZq1Jxco17oGi22NF2vIoyJSjXVgDIrSTd5vteM6D1lJ9RqGm4jfnka/ZgJtq/H9
         qNhYp2D7sAkS8beWlLDin6Q6OJo/6I57GY2A9zIrPH82l51pNdQjJCZNat3ekkSWeplP
         galQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eITvbhH9fF1sJCzPl9yqXr1kzPuM4o4/4VK5pC5/D0g=;
        b=BJVdpA/No5HpmIO3ykIWgdjnWKRX+2z9bpRYtzeWZ8IKzn3bLcZf2+5fv950lmwrks
         wwd0rIndfcNs+t+cPQQ/i7Afi3BjkiNV01bJfPPjRv0SIeJls/tOysLMTsArnUEdIvQ9
         +u+BVxzCVlXIZg393EdXZF2Q6YkvVyod977SnIMPWOa3ZFcEP6EWRXcqvSr1eBsgMV9B
         j8DhVhUEcR/kj87aeVQrOuQAclxKeee2oriWo1IkELGsyWBZo1sB0LdzybcpccJrOUuR
         gOAamBPhJ/nvcwqrzfpps01POmNpYSg6OuyddbiPCRm5TIs4PM5FKhymYdr+RAbZ3D9S
         hAWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YocHGkmp431FqXXVHgxpw12TMltG18jByHVmCDvPIuAsv5BAc
	K5+xV8ZbFJxl8uZ6T/0xxZw=
X-Google-Smtp-Source: ABdhPJyqFdi+SVBpEVn+Pgtn6oXtx6pkrDY2sgIEl6X8DalWNDW+adsoaL4tPXkyHPMvkwsd2bzCqQ==
X-Received: by 2002:a17:902:c111:b029:e9:97c0:d7c6 with SMTP id 17-20020a170902c111b02900e997c0d7c6mr30000216pli.31.1618948078709;
        Tue, 20 Apr 2021 12:47:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:da8a:: with SMTP id j10ls9003326plx.2.gmail; Tue, 20
 Apr 2021 12:47:58 -0700 (PDT)
X-Received: by 2002:a17:90a:df96:: with SMTP id p22mr6732034pjv.55.1618948078153;
        Tue, 20 Apr 2021 12:47:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618948078; cv=none;
        d=google.com; s=arc-20160816;
        b=pqqtJkRqpDsEVKpFWzuQjHJpMF39YHDb0EnDT4CaMghpOkimuQXP8ILb8+VcPDH9cY
         09Mya08z55H2TzcYr8RKiEhTlWODd5FtoCsQbQJtC41fFi7OGBY4SuRdPrml3pc8RZ8t
         Gj+m2TUtM/39+z90e4BrDen4jLwQwnSQNwDFensM9kcJGcZ8im4Vay+Lt6Rvt5wuDO6D
         6cGQkV6fohscTzbT7EE3L51a7UROb7/nOX8Vj8cbjccKECt2P2bqtwrNCbeu1S9sS6zb
         CNAZmJBr0uzGVWHCHz7u/FPDnA/qQZAdWJeqrAJsrnB2vAWyVko9t4yYN4fj7wwqDkl9
         9a7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SiFW4cLK3dCh2r8aGQaiYzHAG/F7jfTRpzCXN26gydY=;
        b=MegTew7wx4d5mvcoeM4HbKCHjtQewzuiPWg7rMQjGnGx4CX5TQwASbWatUt0DXwnE9
         a2riFuofj8y+HGbXOJWgiWG/gIuvy0kM4RVwme/hrvNq8RPOz/b5FD1B5zbdYRY+rqPl
         DGMSodBFj9nv//6IYf8eLqICofPCHodZYOrVw84NIBEymR8DrhbxtMSeP0prSTLEen4g
         ZrRgVunIO3vrJcw7lxKJYhupRVFWgMHEvOMnpn9G4k44ATT1vfL87eeLpFWhz6ZbX4Bh
         nvsg+MuEw3wq3QBkgGHIn3vi22rHvQTNkdRJ79ibMh5KN3VHkAN6LImsaAP+TGoh+AIQ
         zIVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=X3GK8uqj;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id u7si244826pji.1.2021.04.20.12.47.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Apr 2021 12:47:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-200-QlukleblN5-y3fJuwxPo2Q-1; Tue, 20 Apr 2021 15:47:53 -0400
X-MC-Unique: QlukleblN5-y3fJuwxPo2Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B2F01006C83;
	Tue, 20 Apr 2021 19:47:50 +0000 (UTC)
Received: from treble (ovpn-115-229.rdu2.redhat.com [10.10.115.229])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 798B65D9CA;
	Tue, 20 Apr 2021 19:47:49 +0000 (UTC)
Date: Tue, 20 Apr 2021 14:47:47 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 02/15] objtool: Add CONFIG_CFI_CLANG support
Message-ID: <20210420194747.3snxvaaa4amfnbah@treble>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-3-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210416203844.3803177-3-samitolvanen@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=X3GK8uqj;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, Apr 16, 2021 at 01:38:31PM -0700, Sami Tolvanen wrote:
> +static int fix_cfi_relocs(const struct elf *elf)
> +{
> +	struct section *sec, *tmpsec;
> +	struct reloc *reloc, *tmpreloc;
> +
> +	list_for_each_entry_safe(sec, tmpsec, &elf->sections, list) {
> +		list_for_each_entry_safe(reloc, tmpreloc, &sec->reloc_list, list) {

These loops don't remove structs from the lists, so are the "safe"
iterators really needed?

> +			struct symbol *sym;
> +			struct reloc *func_reloc;
> +
> +			/*
> +			 * CONFIG_CFI_CLANG replaces function relocations to refer
> +			 * to an intermediate jump table. Undo the conversion so
> +			 * objtool can make sense of things.
> +			 */

I think this comment could be clearer if it were placed above the
function.

> +			if (!reloc->sym->sec->cfi_jt)
> +				continue;
> +
> +			if (reloc->sym->type == STT_SECTION)
> +				sym = find_func_by_offset(reloc->sym->sec,
> +							  reloc->addend);
> +			else
> +				sym = reloc->sym;
> +
> +			if (!sym || !sym->sec)
> +				continue;

This should be a fatal error, it probably means something's gone wrong
with the reading of the jump table.

> +
> +			/*
> +			 * The jump table immediately jumps to the actual function,
> +			 * so look up the relocation there.
> +			 */
> +			func_reloc = find_reloc_by_dest_range(elf, sym->sec, sym->offset, 5);

The jump instruction's reloc is always at offset 1, so this can maybe be
optimized to:

			func_reloc = find_reloc_by_dest(elf, sym->sec, sym->offset+1);

though of course that will probably break (future) arm64 objtool.  Maybe
an arch-specific offset from the start of the insn would be good.

> +			if (!func_reloc || !func_reloc->sym)
> +				continue;

This should also be an error.

> +
> +			reloc->sym = func_reloc->sym;

I think we should also do 'reloc->addend = 0', because of the
STT_SECTION case:

  0000000000000025  0000259e0000000b R_X86_64_32S           0000000000000000 .text..L.cfi.jumptable.8047 + 8

which then translates to

  0000000000000009  0000063200000004 R_X86_64_PLT32         0000000000000000 x2apic_prepare_cpu - 4

so the original addend of '8' is no longer valid.  Copying the '-4'
wouldn't be right either, because that only applies to a PLT32 text
reloc.  A '0' should be appropriate for the 32S data reloc.

This addend might not actually be read by any code, so it may not
currently be an actual bug, but better safe than sorry.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210420194747.3snxvaaa4amfnbah%40treble.
