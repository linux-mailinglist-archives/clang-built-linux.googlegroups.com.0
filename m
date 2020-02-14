Return-Path: <clang-built-linux+bncBCIO53XE7YHBBW7WTDZAKGQE5ANLEEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BE515D1F2
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:17:01 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id i21sf5411022pgm.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 22:17:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581661019; cv=pass;
        d=google.com; s=arc-20160816;
        b=h1Qr0wcPIKcMK6ZYhOIg6b3o2/E2QkkD7pHZiKij8k9qEoofqaXAYaSxD1ICyOL7uz
         c852HNtcnLBiDiV2+BEJwo2wSL1EOvd420VC/PrdxTu6RCbEUSaClp4rRw0egt5ZSRpJ
         DPrnObiMlV3W6tSyETu+ncInarWaHams7YhJhgrcXdOugEkBg2JIBsjg5K+EySAzsRxB
         qQlSCSdtBKMmI7JV2HyL++D/oxBzeV2NUs1TYKyDSJEbF5bIh1cw5AEy1znbiS5AbSdR
         CPLCBi7I15ZnWVpIpvkQ1Al1jDrk0Lxgt/NVnCItYhWzZ5FJxGBn8ISbiw5uqI16SWLK
         z1oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=9AK09QBxXrKVnh9eOG2tv0u3UPLpaZ+fjjXAgV/pEmI=;
        b=sd2y+P829PQqM/u9Wj6uKtVsE5cH6I9QY+Zp3GqnFcB+fn3Mei2s9DQkKPRJzT+0xK
         Xu+49dR3uiAihiufdvqNwN183/UQJ3+ovdo4dDxk7s6KhDc1w3Acj7Eae9PnVcLxZBEj
         GkmT4bzVCh/DhT5Kv5FnpKsSqxX7ikHhVdDmtanWfdlqnRB24CGWkK8sdV81VUQPAMdh
         N3fLuGYTRd1wk9yJIcj68PRG39tlJj+4nxky9EMgrrRIF/4unIx5YtjjuCW5w2HOhfOf
         Rcren9TYkRamHylPoHjGmBCr5krreZlyMKxhuV9hHtS4kMY2U8bt3Sc6bHSEFaxDGx0X
         X/UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LXgSlpqp;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9AK09QBxXrKVnh9eOG2tv0u3UPLpaZ+fjjXAgV/pEmI=;
        b=eooewhZm7GGIOMK7MgifWV6uqrUxWUepx/2e4+HSoZD127U0fTONnybNg4d+PcwxI0
         F1/q9S3m0bfsKyeFQ915kAwInFNKLac25QQQAS4cWPwiQeaimWOKHS2yq4I3YpFOPCm2
         WRD3fbec/CFjAafyJb8iPz1rv9GP9H0E1/H774i5htOveiPjS0oGuAk1aQSHfK15gAaH
         /dLiIi0UA7s6jGa26rMIOlG3D7si0Dbadn/WVTWAkQBvLAQtN6Y2w9DrcJZs+DIXFzVi
         HU/TM+U2dPUNUuabUNN3Iv0KwSf+LEvJkkZ2qnY5r+ScIU9W9NN0n6cu/lhXOz7dw6sf
         MuaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9AK09QBxXrKVnh9eOG2tv0u3UPLpaZ+fjjXAgV/pEmI=;
        b=eNRwZ0lup3mukbedjZm07d+8YgFNPGxqaxA6scnbDdK4cyA1Gi1vc6rxGQrTsPNC+6
         /0W3X3XMUNDnal/7IoZsTSBcOvQ949XXqJfIJ83RzoEteWMZOiw/bIJ8TQ9fDkzKrTvQ
         bY9GCOCGafGrpp7wlG1WBIs/tr4PKATwWdgq3VmxP5lG1cgtakbpQu4qoH069GAhBXFU
         w6S6JbMzzxm22J9c5I2TMDGAfuokaS0WuABz0qjaZ2++oCy8hnePtvue0Oo7m9hFnFE9
         LdJhb/2JvYzPdlbs0jGztApv90JJy0BeXrQ/UmN2o3aQ6KScQO+pp3Y4dMoWZQrC1WX3
         lsQA==
X-Gm-Message-State: APjAAAUeMcNNaKAC9zdfbsDmxVekAybAYABX3BVPb/CFfVFVP8Zr9eFy
	TumxKPUQOJ/AAzBtNFO6udY=
X-Google-Smtp-Source: APXvYqxjEZmVoTQHfa7R5bsE+BQAwyyjFzsWEGFj0GaWKZDRKmKniOd5gmXcY7HkpeUtkBKJmTSzDA==
X-Received: by 2002:a63:ce03:: with SMTP id y3mr1807761pgf.427.1581661019458;
        Thu, 13 Feb 2020 22:16:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:46ce:: with SMTP id jx14ls1191276pjb.3.gmail; Thu,
 13 Feb 2020 22:16:59 -0800 (PST)
X-Received: by 2002:a17:90a:1f8c:: with SMTP id x12mr1648923pja.27.1581661019017;
        Thu, 13 Feb 2020 22:16:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581661019; cv=none;
        d=google.com; s=arc-20160816;
        b=eLOBZW+t90Oj4X51h8+GE4X0VZVclVu3jJ0Frkv0ARGTrmNIT1BoFEruGaqyFafFsa
         XcbFJjGg73+dJgqFn/kRdjygeoN1aWnujV/994OAbzSa7D+TZNaRF0Sv1V8ptu5j481N
         BI1Gzg9PfOxenQ3EfRBmOuPHF5wMgi5m75J7+axndbSHZk201fBI1LdqNqGk9WnBL0LT
         1NW2S2j6aCGmmBHpAeWsvRd7qeJaqSLhMZjdL3y+dF4t7CZP7g60aX1QRpA7pwKq/s7Z
         rYsQF9Yg8MTgvpCBVcI5cTDMFzvtPoqi1QqbhMxP7PQGPoV0ETP8z5yefGr8Y/aV7Swh
         lFZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=VFRjTGQ9Dnl+MZIVnGVwqakySwAmYVzRmQfE7Q96rnY=;
        b=hYa5tCWssVvMBTBhfkT13XRkyA2hTzGspqteKqLAPnOH6IUwwhKzo0SmgJrTC9fRRi
         Ptg6nDZpH6/RlY1ehrn5kFGhAN1f0IWZVxJooUMS1fCQnVU3OZAC5tcdzkEYM2ezsGRK
         bsKwiKiQr5tZlIikKZc27fa+IHzYrHxHlK4x6fsidi9i8FsBq+as2DlcSoqAvUWbgD4K
         Yz5l3Nh93Bimy1BRV70Qt36GFOLizLw25LYWOPJBqNhoJiY8nndI8VmRt7PDBszf7pCO
         l2D0K6newWsTtmnTYHuSSdI2wjYeCrPGTYDlQUcFz+f7pJKkGzvLZ3otFR64rXBNzUEQ
         +9dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LXgSlpqp;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id i16si217347pju.1.2020.02.13.22.16.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 22:16:58 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id v2so8221163qkj.2
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 22:16:58 -0800 (PST)
X-Received: by 2002:ae9:dc82:: with SMTP id q124mr1119706qkf.20.1581661018030;
        Thu, 13 Feb 2020 22:16:58 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id b84sm2652163qkc.73.2020.02.13.22.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2020 22:16:57 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 14 Feb 2020 01:16:56 -0500
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, jpoimboe@redhat.com,
	peterz@infradead.org, clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] objtool: ignore .L prefixed local symbols
Message-ID: <20200214061654.GA3136404@rani.riverdale.lan>
References: <20200213184708.205083-1-ndesaulniers@google.com>
 <20200213192055.23kn5pp3s6gwxamq@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200213192055.23kn5pp3s6gwxamq@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LXgSlpqp;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Thu, Feb 13, 2020 at 11:20:55AM -0800, Fangrui Song wrote:
> On 2020-02-13, Nick Desaulniers wrote:
> >Top of tree LLVM has optimizations related to
> >-fno-semantic-interposition to avoid emitting PLT relocations for
> >references to symbols located in the same translation unit, where it
> >will emit "local symbol" references.
> >
> >Clang builds fall back on GNU as for assembling, currently. It appears a
> >bug in GNU as introduced around 2.31 is keeping around local labels in
> >the symbol table, despite the documentation saying:
> >
> >"Local symbols are defined and used within the assembler, but they are
> >normally not saved in object files."
> 
> If you can reword the paragraph above mentioning the fact below without being
> more verbose, please do that.
> 
> If the reference is within the same section which defines the .L symbol,
> there is no outstanding relocation. If the reference is outside the
> section, there will be an R_X86_64_PLT32 referencing .L
> 

Can you describe what case the clang change is supposed to optimize?
AFAICT, it kicks in when the symbol is known by the compiler to be local
to the DSO and defined in the same translation unit.

But then there are two cases:
(a) we have call foo, where foo is defined in the same section as the
call instruction. In this case the assembler should be able to fully
resolve foo and not generate any relocation, regardless of whether foo
is global or local.
(b) we have call foo, where foo is defined in a different section from
the call instruction. In this case the assembler must generate a
relocation regardless of whether foo is global or local, and the linker
should eliminate it.

In what case does does replacing call foo with call .Lfoo$local help?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214061654.GA3136404%40rani.riverdale.lan.
