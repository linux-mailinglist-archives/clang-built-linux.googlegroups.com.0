Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBSUSV2AAMGQEY5GP4TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F3030123C
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 03:26:19 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id f7sf5193112qvr.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 18:26:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611368779; cv=pass;
        d=google.com; s=arc-20160816;
        b=DzE7DVYov3B6kgpx5Qvc9mQfR2MFIuN8Vn8bFvnoQX+NomLFQHiR+3iK4XdvDv6kHo
         5IFKfs9iUhlOABxNuTSwlinB/r85Qc6iZVHhAyf7mMcvydubJjM4l7FJQdoBQCDCEmts
         aYgXeWWa5Wr7oTQJBKebp9Q18+Algj83/Dv7K+fSOrHpkGJUIhgO0kn9KkqpD9quYQ9y
         DRm/rODhJ8wKXIEHD6nH9jO4a4Y68EZGS01SIVdyKF6JF6F0fvDLw1fs995o9iTNijk3
         n19/NlbKdGSOguru8y2cPIBKPCxP4Gy3BCOmLxK8ahSwUc4SgP//mwdUS4Exd19esD1z
         Y5Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Doh2+8TaVRB5M9Ya+nIaxcVl834QsdqUOOBtFd1Sdsc=;
        b=jBm0vALkClv67t8QSoA0Amd3K+XcOHhub/0vmx10b4tMQCuCfyifJvcc9aliIMiKik
         zHchRUBAjH2BL6+IGxmZ74VGXn1Qfi/zfYFUrABOsdc++EdKqaWS/+BYoO0p7YFOhalS
         goFxkz8VIRa6rqe2/snrku8fAbiFWeSmsXjbTQfghstBtamBl+nv8SKPzDcSBrickW++
         nkczxUmLruCCp/Qr6WaRfGnZzy5ZFaktmPh6EX18DxWK6DH6pNIowNrmxYOKS8PAbMKz
         ZR8ZgEV5xpqQqWsS9B1zxlF2mvlZl25ix83xAZknOyUZqo77RY9+YfLUZzs2dfRjuQZW
         up3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eejmuTD9;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Doh2+8TaVRB5M9Ya+nIaxcVl834QsdqUOOBtFd1Sdsc=;
        b=JynMyBPhmCQkts1uVU45ZGl3y07R2vOPL4K7b62UJqsXsQ4NczxkP7InxLRof8xvfn
         3d/RPCxWFAlDNOHj81b5ZnfnQo2Hrb/vLlHytGtRJk7x+S8J2JnJB4zWP+1kWzNciDEi
         csTg40l+wHRfhE6YM4Obt8I1keSgKkjogpX1F9HYl1dOVDos6OLLJxOmBefRe2vLBGml
         ZqWx/j5IA9byl/lGKhJkk04qU7lSnUsoUVgyc2EVKWuEaAuFWRJn/FI+kxxkORaWwHZ/
         GZfSYbgDyHLcQl2hKG+euUISNU+kXZNPiHHNnEmVrKkfvi8D1ZurXzMYNz3gnaPvp6dZ
         V2AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Doh2+8TaVRB5M9Ya+nIaxcVl834QsdqUOOBtFd1Sdsc=;
        b=dHLm1UTBXwfRbgoCV9n94/eCRBdYmE5v3aUtFKzcb3OUCHD5Dty2fwmfHoeeMaE/u7
         k+Jab2xVmnn7cVFZp7zWSNMOVm5thFmDh1I11GlCidyP2K6lGqzAGvY9G8Co8BWQsGPF
         i7HdgPddzdrVsHQ0wjexxi56OcnYZUSaqf0zyiVKEGz9rHOGBEQHL44jqfWM+fxNuYsg
         tAIBbkUCX5slBxW2MqRPC4LVys/31vh9Iw5imm+yRKqxwV/szVWKC7xSPkvT8wnNKGBY
         DjVngicQ+vMuuGW1LRwtQr62099gyFXhM96quMsSU9gVPe8ealThtt1kiOEb+0HIWKkA
         MOPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Vg2ehC8CyVzKsReg/3tKC2NPst1q4SMRKQK9/JeW3+8idAHZZ
	+2/DLSduz9Mo0693hCrsavQ=
X-Google-Smtp-Source: ABdhPJzaM+My0dqWc2W5BrKc8L6GedT6eWEnmoLhBUFIjnavh7CttCOXzwmb5oWFrjm9IC/1qu2SeA==
X-Received: by 2002:a05:620a:13b1:: with SMTP id m17mr4287169qki.403.1611368778832;
        Fri, 22 Jan 2021 18:26:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4242:: with SMTP id l2ls761219qvq.9.gmail; Fri, 22 Jan
 2021 18:26:18 -0800 (PST)
X-Received: by 2002:a0c:f38d:: with SMTP id i13mr7185662qvk.33.1611368778495;
        Fri, 22 Jan 2021 18:26:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611368778; cv=none;
        d=google.com; s=arc-20160816;
        b=whCK+jLEZfdbQoXnWN+6IfPCJ/OVJtipvssWCODX1Am1zNV3nByFNAOY0LfQohxAmQ
         Syyih7JGuEduRsZZR1DRt4PjVQ/5z0RyfjwnOIpXT496cJ0MaMhXoPidrT9IiJEi8BNF
         1VI/rVA40XAfvh+fG8glRAHapkeySAWb06dnPmwQKwsT5fcxOw/IQC4IAXFgaUCw0UYv
         KPgyEh5g/znkH7tgFZTNH0u99JrVJEtRTOfZOfOkWHkcOBINh0aQAP6TOjKLsl6kPIKc
         KULZ4fbMx281UEZzO4B+njGoODgDnAhMQ6dCzz8sCE1flO+RipewpZ+SLuBWWPqtueti
         lBWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jJX45dFL81O/CxuAJek1TRpHKAzDl0ox2asYfOyKPaQ=;
        b=DXEEoDc0Jq+PFI/NWjyOsvdY0HhvKxFaP5umWMsSJskCA/6FHmgG174LdIa9ybAZHh
         7suknXld2dTboAKovY7lYHiVE2/8vu0VaaAWnriciY9sQtu7gzi/s6S5et70pqZociks
         22x9aGBz/3u+Is++QwNVlfbtYwB3h7Q37BoPmvCCbUisD81sNizBqMsV4PHuqOmmA1SI
         tMwi9hpxtusNjcmHQwpCRVHSfh1/P9VODEoOMOoNGRMYo7b4/bm4JAZfWA16yz85Oq1S
         DEHtUwqqPFxdK+bHcySNDOehJQcGYe7IXfLmxHvFk1iazXEDkG0lEu+vL0HbK7k5Il+i
         F1dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eejmuTD9;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id g51si859949qtc.4.2021.01.22.18.26.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 18:26:18 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-Ek-tnCOaM1Osdmp0eicttg-1; Fri, 22 Jan 2021 21:26:14 -0500
X-MC-Unique: Ek-tnCOaM1Osdmp0eicttg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F3A9180A09D;
	Sat, 23 Jan 2021 02:26:12 +0000 (UTC)
Received: from treble (ovpn-117-226.rdu2.redhat.com [10.10.117.226])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFA7D5DA33;
	Sat, 23 Jan 2021 02:26:10 +0000 (UTC)
Date: Fri, 22 Jan 2021 20:26:09 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, X86 ML <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Kees Cook <keescook@chromium.org>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Miroslav Benes <mbenes@suse.cz>, Fangrui Song <maskray@google.com>,
	Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH v2 00/20] objtool: vmlinux.o and CLANG LTO support
Message-ID: <20210123022609.n7xsj2a4potoijz7@treble>
References: <cover.1611263461.git.jpoimboe@redhat.com>
 <CA+icZUU6QBeahDWpgYPjkf_OmRC+4T4SAnCg=iObNq9+CGT6jA@mail.gmail.com>
 <20210122154158.lylubqugmcxehugg@treble>
 <CABCJKueaW1BEEBKLQzyp77VwTL+bE4x=kOLV3TWmc1s6-r3PeQ@mail.gmail.com>
 <CAKwvOdkcoCFKD63xtQzRdFikDk-GUUfUG5EEKiCTA3cueEZQNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkcoCFKD63xtQzRdFikDk-GUUfUG5EEKiCTA3cueEZQNA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=eejmuTD9;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Fri, Jan 22, 2021 at 05:32:43PM -0800, Nick Desaulniers wrote:
> > In this specific case, find_func_by_offset returns NULL for
> > .text..L.cfi.jumptable.43 at addend 0x8, because Clang doesn't emit
> > jump table symbols for static functions:
> >
> > 0000000000000000 <__typeid__ZTSFjmiE_global_addr>:
> >    0:   e9 00 00 00 00          jmpq   5 <__typeid__ZTSFjmiE_global_addr+0x5>
> >                         1: R_X86_64_PLT32       io_serial_in-0x4
> >    5:   cc                      int3
> >    6:   cc                      int3
> >    7:   cc                      int3
> >    8:   e9 00 00 00 00          jmpq   d <__typeid__ZTSFjmiE_global_addr+0xd>
> >                         9: R_X86_64_PLT32       mem32_serial_in-0x4
> >    d:   cc                      int3
> >    e:   cc                      int3
> >    f:   cc                      int3
> >
> > Nick, do you remember if there were plans to change this?
> 
> Do you have a link to any previous discussion to help jog my mind; I
> don't really remember this one.
> 
> Is it that `__typeid__ZTSFjmiE_global_addr` is the synthesized jump
> table, and yet there is no `__typeid__ZTSFjmiE_global_addr` entry in
> the symbol table?

I think he means there's not a 'mem32_serial_in.cfi_jt' symbol at
'__typeid__ZTSFjmiE_global_addr+8'.  Probably more aggressive symbol
pruning from the assembler.

It's fine though.  I just need to rewrite the CFI support a bit.

But that can come later.  For now I'll just drop the two CFI-related
patches from this set so I can merge the others next week.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210123022609.n7xsj2a4potoijz7%40treble.
