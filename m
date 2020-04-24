Return-Path: <clang-built-linux+bncBCUO3AHUWUIRB65QRP2QKGQEXHOCIJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B7F1B73AF
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 14:15:57 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id g6sf8467677qvn.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:15:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587730556; cv=pass;
        d=google.com; s=arc-20160816;
        b=qo/x/u6Y+xB4dagYDiMH3nB+VcebaA+UDd9cJF79X9a9BUrAJCQs+Vb2vNECCnytL/
         jfX1AkaZ5McWB6lsxgkyupTlnsQutrgvnwczfsRH5XTR5c7IEfMVlIT+9Ii0jaXer0Gk
         03+NlwxRoUgJvhysTRdecGr2S358zPW3xNRAYYWlyAK8vB8xWn+sLl7ScM938c+Ecabd
         WNA7WrL43cs13UkbAto5GUFDKyVH7um7/Kv/+KFwDLv2kv7vjJqerS2aPgUxNIlqsxYc
         qrs77/T7d/tZMWc13ZmIFBNFVOPg+2vrqoXtIWd599fnnxXxSgmd5UbgFqiaDmI2BOYr
         vDwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pXhoze7rP9nWslPB6b3AwreiyafmPl/WnLkAQIijWFk=;
        b=OdGOn5pj+Y22FIkv/+j05c/ASC/2BGCKtkB/ii6muAYkmalWoE3SYHua4RB7TTlbnX
         Bxf+vFBV11Oi8jlaxMKAzMvwx2nDhtEaKzbz0a07ek/L/fkwsGC/J1uGaLI7bNxN8CYS
         gq/MPsmMbDq/KwCjzx4UwTmrssXS+ekwgTDVcxRK88uVKsrU8BNPgKYrYEAwIO9Nd20W
         bVHHtGrt85mOri1FUoEf07Y7k00j0rOjrXeOjdvVtIjEZWHhK6krfsvdL3usCnepLcYN
         G/44tZXm4AeOs+UDxt99BnWcjLPrW6Td1t4oD2EhmR6DDxp66O1Y8F17hyMJyTzuJJTL
         ZlfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=EDZuIF9m;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pXhoze7rP9nWslPB6b3AwreiyafmPl/WnLkAQIijWFk=;
        b=eZJni14h2mcOZ5FNUxY+yYsMEI4HwPeP+WfmkWGLdTaVhsZzzfU/hjPNdiApwfyy0T
         wGf3uTR4hS+yliWNdmXw4OsvuTot3ItbRCmyWnOckXvU0K1ATNoVXjELSIxxtMSv1tcc
         pbkW7A+HDpQDZOAtuiSpGFehnA5r8Sk+Y36nvBpJxUTncG6dpUY97FeWgyzI1fCjZtKT
         0FypGMrI+18jz/4snzyP0iJP+j6rZax2wI+j23DGN5wPMZ99NTVki9aEaxmKBEtZwjLN
         8Td/m5igAm/00SBwttffCv7xcpwxyf65KhvIDUpFrF2q3IeOllyjRzs3BClcb4JgVce0
         /8Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pXhoze7rP9nWslPB6b3AwreiyafmPl/WnLkAQIijWFk=;
        b=EjF9CO4kZAH857xwatXZBzuRiXWHhEK+hfChor6hu1wLuPp7hcGWGwABwWwNu5NKHc
         zMUZdvplbM+MvsYD40wtk6Wh0QWAXH8HV8Bce2uhxF2Q6Tuy7goCkM9UVRsS4Ve2Lvl9
         2fKRn2isdq3E2uzEntdJSW9smHrgHPiAbQKrJX88Bb060Hbo4KIvTxGyEHI2j46YLl8C
         cz+pE+OTiRn5a6FFa+KPiC9Z/6z3ba+Jt7UYU1wPf2U7P+7chfS98R4OVs6osVlsYv9r
         Mls7cb8PBCRWqddas7KrQI6rdKQ/O5sJQwdZAhA5IilN8O20BGV37rMfOAdIt6hO7Ast
         fU5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaUprRE4gv0+JKgZEkOGuo5wiZKLpcMFgrV6+iuEaVEbZtdRrUp
	TuIlovb0HP9weuelOaGJYto=
X-Google-Smtp-Source: APiQypJ6W84OawsJcdxNseLxaBFU7+o7tMdNbUOX+yPKvWT8wROZzIxC2Mv+32aDzrm9uaRftrQoaw==
X-Received: by 2002:a05:620a:22ab:: with SMTP id p11mr8896755qkh.373.1587730556050;
        Fri, 24 Apr 2020 05:15:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:530e:: with SMTP id t14ls5183282qtn.0.gmail; Fri, 24 Apr
 2020 05:15:55 -0700 (PDT)
X-Received: by 2002:ac8:3fc2:: with SMTP id v2mr9076534qtk.113.1587730555669;
        Fri, 24 Apr 2020 05:15:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587730555; cv=none;
        d=google.com; s=arc-20160816;
        b=v4yzggeQ0nZGZUy6HiO0tBtXBZ1nERbwJTSN71oXokT856gKmTH663gSmRIrieDV1G
         goTeEvzDrs+dwMZaC1RuigfkqPFbQPqtk1RU4bUTSG7ENLidfUrAQSRZhicpB8DxpRpT
         AMoxM4AARuL1rqsPQBb4VD/V0QtnaRgQ8WidBibBNN+JdhCd7lPI8mQR486sKCuYKLhT
         GdFgJKVpfyRTK4iMdkeuM0gyM63bU9EZjHlS5ZnCRP2FPxJeebcbH/KydwDT6C/L8BDH
         f/vGYepiaYrMUoSjU2UikFkOavGvniCT3BRVxs+eQ/H/K8V10mEk0O+bIigvNsCzssVn
         JYZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=stQMKcxru1ycab0nNkNI6do88V3oBob0HPMSzdDCfe8=;
        b=BpuJ4GA0pmVq86p42EhYVizkLS0KtSEPKxT4jVopijnfaajwOnzSdcWVAoL32YtC8A
         dtvtuaoarPbGuyJNXJSpCF+xUoveyqJCCXDLKNrOUUelxkyTxnyDJUfYEuPGQoqRdL5o
         NW2qsWOwW+OIu7yhPndjHCPJa1ArFyXuZcnKW9y2fl3HC/fHSBajdJF31jspELhUb98K
         jXfrFxF2tfQyr/RgcI5TY6EQa8Ihiv41UsLvbvfwKlWf7AKJqGnvFbjRtVzfEEwJr++5
         na9TdUt6YgHxjnp8gZA5kgwGhoOUlgfvxl1JSEPhd/fVNzGF3PzQE1nF8LnPMWMu4PsA
         BkeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=EDZuIF9m;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id f3si403542qkh.5.2020.04.24.05.15.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 05:15:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id i68so7642356qtb.5
        for <clang-built-linux@googlegroups.com>; Fri, 24 Apr 2020 05:15:55 -0700 (PDT)
X-Received: by 2002:aed:3ff4:: with SMTP id w49mr9175729qth.61.1587730555234;
        Fri, 24 Apr 2020 05:15:55 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.57.212])
        by smtp.gmail.com with ESMTPSA id p80sm3577469qka.134.2020.04.24.05.15.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 24 Apr 2020 05:15:54 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
	(envelope-from <jgg@ziepe.ca>)
	id 1jRxFJ-0004zP-Fh; Fri, 24 Apr 2020 09:15:53 -0300
Date: Fri, 24 Apr 2020 09:15:53 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-rdma@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: remaining flexible-array conversions
Message-ID: <20200424121553.GE26002@ziepe.ca>
References: <6342c465-e34b-3e18-cc31-1d989926aebd@embeddedor.com>
 <20200424034704.GA12320@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200424034704.GA12320@ubuntu-s3-xlarge-x86>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=EDZuIF9m;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::843 as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Thu, Apr 23, 2020 at 08:47:04PM -0700, Nathan Chancellor wrote:
> Hi Gustavo,
> 
> On Wed, Apr 22, 2020 at 01:26:02PM -0500, Gustavo A. R. Silva wrote:
> > Hi Linus,
> > 
> > Just wanted to ask you if you would agree on pulling the remaining
> > flexible-array conversions all at once, after they bake for a couple
> > of weeks in linux-next[1]
> > 
> > This is not a disruptive change and there are no code generation
> > differences. So, I think it would make better use of everyone's time
> > if you pull this treewide patch[2] from my tree (after sending you a
> > proper pull-request, of course) sometime in the next couple of weeks.
> > 
> > Notice that the treewide patch I mention here has been successfully
> > built (on top of v5.7-rc1) for multiple architectures (arm, arm64,
> > sparc, powerpc, ia64, s390, i386, nios2, c6x, xtensa, openrisc, mips,
> > parisc, x86_64, riscv, sh, sparc64) and 82 different configurations
> > with the help of the 0-day CI guys[3].
> > 
> > What do you think?
> > 
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=d496496793ff69c4a6b1262a0001eb5cd0a56544
> > [2] https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git/commit/?h=for-next/kspp&id=d783301058f3d3605f9ad34f0192692ef572d663
> > [3] https://github.com/GustavoARSilva/linux-hardening/blob/master/cii/kernel-ci/kspp-fam0-20200420.md
> > 
> > Thanks
> 
> That patch in -next appears to introduce some warnings with clang when
> CONFIG_UAPI_HEADER_TEST is enabled (allyesconfig/allmodconfig exposed it
> for us with KernelCI [1]):

Indeed, I've tried these conversions before and run into problems like
this, and more. Particularly in userspace these structs also get
embedded in other structs and the warnings explode.

Please drop changes to ib_user_verbs.h from your series

> ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with
> variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of
> a struct or class is a GNU extension
> [-Wgnu-variable-sized-type-not-at-end]
>         struct ib_uverbs_create_cq_resp base;
>                                         ^
> ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with
> variable sized type 'struct ib_uverbs_create_qp_resp' not at the end of
> a struct or class is a GNU extension
> [-Wgnu-variable-sized-type-not-at-end]
>         struct ib_uverbs_create_qp_resp base;
>                                         ^
> ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with
> variable sized type 'struct ib_uverbs_modify_qp' not at the end of a
> struct or class is a GNU extension
> [-Wgnu-variable-sized-type-not-at-end]
>         struct ib_uverbs_modify_qp base;
>                                    ^
> 3 warnings generated.
> 
> I presume this is part of the point of the conversion since you mention
> a compiler warning when the flexible member is not at the end of a
> struct. How should they be fixed? That should probably happen before the
> patch gets merged.

The flexible member IS at the end of the struct and is often intended
to cover the memory in the enclosing struct. I think clang is being
overzealous with its warnings here.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424121553.GE26002%40ziepe.ca.
