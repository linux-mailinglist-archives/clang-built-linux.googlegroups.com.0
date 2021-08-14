Return-Path: <clang-built-linux+bncBCR5PSMFZYORBMXA32EAMGQEJGFJG5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5693EC281
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 13:59:48 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id w23-20020a170902d71700b0012d8286e44bsf1999063ply.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 04:59:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628942387; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cs1xLmRgo9r7c7lSXPF35W0LYtL0TZAgfTv4AnU0/WnwHEN98lOzJhAljXjj596D4f
         pXCtXQCQQgGxPn9uAgz2MOko9UrdbH7d1pFeo3qWQOycL7ueJ1BO1hDTp+GZdiSomOts
         zT2UtLjfrGTTnRyZhdGswUEpA7Taj1jNFvhKqLGoEkIAbi3gg/8Rc5cmp+2WgqDOHspN
         zuLas5C9r8znGu2vWDgMLFy+VanSmOLgkF/F2qWhqSk/c/OAwjlkdbPJDzZ62w9tsZ7r
         Dc8vjZDpjyuHVVQkts7kjGrMrYxk5nZjHMMl1fz2+y+3qlhGcRGch5ve/CqZxS2/CL46
         hWzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=sHoXSa3iOgRilbjAqidWU9HzQQ6OEBNfRVqrnUiWnlY=;
        b=pBRDp0O66x1dPkpoq6Ie01i2ByuYof4fKcSYxwh3w3abbg3j5MEp0+1IQr4ei/yFqG
         T2pFhPQGvS7ghQ8GmeUl9M9UURVZEfY/Rw4z74PAJdrJl8FPO/uxGh6V15nSUN4tvBMP
         wmF3gEn658dLvaSpgu8e+1NhGGjxQ3rGrNtn3d5dgQidJg2K4zs4gi9lAZLn5UIraSnO
         p33dJhBeiMLQ3mp5KO5AmDRRgDcpmPwTQhbEF7cOZmg7jVI4f6D6LwaDMHsK3i0K0vQs
         1z3UrFFsCR3a2ZtsKjvJnJrv9k1KjfR9tBPzPpovqeZfkckEA9rh9tHaENKXIugOEPPa
         /UkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=FQidGTPh;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sHoXSa3iOgRilbjAqidWU9HzQQ6OEBNfRVqrnUiWnlY=;
        b=OhszRzV3/nuOTMduyZqjC4SX7lss1ZotHDHDOW4kY4onfy0sLAVppoUAADFALoYN9X
         MqCEhOFmIYji0FlXtX43+3hPsNAWL9iBLG75einZe8KitSS7fHh04+ARtjbjc6uemTpd
         uqdcSIDoWbQWejkAxE7od1anccAEaLF7BhX3B47lJ6El8K07mYMnIFtepIqlbBE3/aJZ
         DxXak1nuZrxYvAsHXmYu5AVDb7ByWDuCduS6HE2YGkBXgosMjxZUZzs2nE5PAsKfM9Es
         5p1G5s87RIPriKRC0Imw6GNcOL3B1qsbfo3iNzAQsi32OAbCHkeibAHuvAZWlcg7YWrE
         csmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sHoXSa3iOgRilbjAqidWU9HzQQ6OEBNfRVqrnUiWnlY=;
        b=Ka97s4xAgBl1iGJZ0a46ztdcu5Swl48dM6Meofmx9YNYWgXFx2X4+C6ajuJ+Ypmn31
         bcem9kkWKqeHtlg2HD9IZksC+C5zx+QeahI/5nWoQ2stbHxKYOq9sD4KsCr7gJv8eJLt
         L80aSifVYmDQgX9cQ7S671TBc3ECSKmYFz4QE2B+5slN2y2O2ldbB0+xiE0RRcTYVsN3
         GvNCNTv7Vet66eF7nLcmncalgINxQ3USDgMf1fDkSkw0hLGYsXXD8jThxqotWWA+60X7
         yW7rNTsecIN47uA4zOwWNBr01hEdniHOr9USVxy7dC/fnvFZWkNPMM3a6hrfphOiR2/n
         U0hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WX+gzWBIauq3coc/5lAOuHfs6U6K473gUaxhrFlLl8up72XtD
	bFEEacBXO4CP2cYC28CHNMg=
X-Google-Smtp-Source: ABdhPJwEjIy6e/P5c8Z0427NaGh8ZnpyuR5Hiuc3rgUzK0MutEzRWTMgANycjwrSapinYd/AYHI7mA==
X-Received: by 2002:a65:6919:: with SMTP id s25mr6624573pgq.2.1628942386919;
        Sat, 14 Aug 2021 04:59:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6343:: with SMTP id x64ls1602738pgb.1.gmail; Sat, 14 Aug
 2021 04:59:46 -0700 (PDT)
X-Received: by 2002:a63:25c7:: with SMTP id l190mr6511184pgl.165.1628942386363;
        Sat, 14 Aug 2021 04:59:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628942386; cv=none;
        d=google.com; s=arc-20160816;
        b=WBBk+nr7+ihkAjkC33ObFJo2wQ9PrvbDAE7t0d08emmyCVMbmn+LK1jOZnqBPy7Te7
         zswHrFfpOPYR4Xfa3tfFNJMP2Omjo/rCmCqg6thhmQQYA02zZXaIGYiMqc1SItc3YY1F
         QjZVS8y3M+gBi+kF6yAyyeKAGikkUtw/Is3TYsx8kIYGvmcjE5Qa0vK6EWmACKg21mGb
         hgz7N5b/7KEeoDMjr0TcPPoyhLB5WQZfIh1boWe+kdf6EaxM/dPDFR/FB5z0Zb6GuS/T
         ESuw9V213CydvRjrRyjtsBAxjXPdrVWgOLLwPLLBOgC1b35SnpI74EYt+Y00vIQTTXoT
         AZTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=g2G5hFPZF1lKhi3yGSAgG83UWIDupBfi4QPY+qfq8Ks=;
        b=AgT7FUA2U7wwR2n3CLBtPdjs4UEZQzKwjCGxkpkL6Qc7Z3ZE/+7jrB9633OTUG5je3
         Zow/I4ZuK+eh9UpbTkPqsARHItUjmPIxvYIu1SInZOmcCE0+iT7Sq3CKgV4j5fqcE2P4
         b69AS+zgnPAJhn1Ftgo0jkZbhD41GBWaNFtSop2jJWoFGXTwO0zT19eTOEHs93XCGiEc
         pf8s9aXDtpYqZInsNDWmSUyFGRfI1Nbrg1oc439GQ9zRPLSsfAw3Y7tnbyApJsa9qtli
         ct5b+CuLghuS88yXQPclpTJhR2lXjWEJ5yplQY9vUZjvBXSnxag96EcTvsWTSEAI6iYQ
         OUnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=FQidGTPh;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id nu6si220268pjb.3.2021.08.14.04.59.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Aug 2021 04:59:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4GmzW15xPNz9sWS;
	Sat, 14 Aug 2021 21:59:41 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Bill Wendling <morbo@google.com>, Daniel Axtens <dja@axtens.net>,
 Fangrui Song <maskray@google.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras
 <paulus@samba.org>, Nathan Chancellor <nathan@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, linuxppc-dev@lists.ozlabs.org, LKML
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ppc: add "-z notext" flag to disable diagnostic
In-Reply-To: <CAGG=3QUz2LNgC8Hn6rU68ejjv4=J9Uidef0oH9A7=sKTs+vf7g@mail.gmail.com>
References: <20210812204951.1551782-1-morbo@google.com>
 <87sfzde8lk.fsf@linkitivity.dja.id.au>
 <CAGG=3QUz2LNgC8Hn6rU68ejjv4=J9Uidef0oH9A7=sKTs+vf7g@mail.gmail.com>
Date: Sat, 14 Aug 2021 21:59:40 +1000
Message-ID: <87a6lkme37.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=FQidGTPh;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Bill Wendling <morbo@google.com> writes:
> On Fri, Aug 13, 2021 at 7:13 AM Daniel Axtens <dja@axtens.net> wrote:
>> Bill Wendling <morbo@google.com> writes:
...
>> > diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
>> > index 6505d66f1193..17a9fbf9b789 100644
>> > --- a/arch/powerpc/Makefile
>> > +++ b/arch/powerpc/Makefile
>> > @@ -122,6 +122,7 @@ endif
>> >
>> >  LDFLAGS_vmlinux-y := -Bstatic
>> >  LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) := -pie
>> > +LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) += -z notext
...
>
> Unrelated question: Should the "-pie" flag be added with "+= -pie"
> (note the plus sign)?

I noticed that too.

It's been like that since the original relocatable support was added in
2008, commit 549e8152de80 ("powerpc: Make the 64-bit kernel as a
position-independent executable"), which did:

-LDFLAGS_vmlinux	:= -Bstatic
+LDFLAGS_vmlinux-yy := -Bstatic
+LDFLAGS_vmlinux-$(CONFIG_PPC64)$(CONFIG_RELOCATABLE) := -pie
+LDFLAGS_vmlinux	:= $(LDFLAGS_vmlinux-yy)


There's no mention of those flags in the change log. But the way it's
written suggests the intention was to not pass -Bstatic for relocatable
builds, otherwise it could have been more simply:

+LDFLAGS_vmlinux-$(CONFIG_PPC64)$(CONFIG_RELOCATABLE) := -pie
+LDFLAGS_vmlinux	:= -Bstatic $(LDFLAGS_vmlinux-yy)


So I think it was deliberate to not use +=, but whether that's actually
correct I can't say. Maybe in the past -Bstatic and -pie were
incompatible?

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87a6lkme37.fsf%40mpe.ellerman.id.au.
