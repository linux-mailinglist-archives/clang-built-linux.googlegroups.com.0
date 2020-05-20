Return-Path: <clang-built-linux+bncBCW3JUV5QMEBBE4VS33AKGQEMVWAEGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 647DE1DBE6A
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 21:52:52 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id m1sf2889524ybk.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 12:52:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590004371; cv=pass;
        d=google.com; s=arc-20160816;
        b=XwYl9jebEiJLwlfJHqAK+dE5HpCjSgGFJ6ntG8prPTGQjxg54elkcn5CnwZQ+W3CUH
         3WW8zICIF1lGiUynRzcrvkK3+ArFtmC4ByHusYc7pgCGAmkjVXa2u3J3wllfb9+iYDDr
         PxZY84iGLitWhWYX5IQMCPDZWn99tWOGH5j4fku20Pk3z6rk+4+M68KeTkw+YD0uPGE6
         mTkOYz8q/Ekq70EOgCFrFtfUZabeT9dkecuzk7OfelzWmILKGED+9H1riYhuxXWJU9Ic
         4LRkOH0/hVJKhQZaoMwgXi7yIG2v3yM/S7BKp6Td9HqyiHh3HXYxAvPixi7T4UzLXpNs
         mGXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=7BTBEPdpI6E1qaPK47xa5RO7q+c03mRc8T1n9usBC7o=;
        b=CK1D1uWoyA6nq8+2G6HIvgvktL9y7PJiMn3vH7M0AT3c+rsq6MOQpKQTsGj7SjgcBs
         0gR5jLqNrC7zfJW4PJP6GqmHsUsar1zNH/nu+r2O/DDCh75PocKY1kDXj6zIdb28iJXd
         eB7AZH9oKLMIwwOFL6drFt8pmF0oXRRMp2wfOELhNDexRazWJqe4c/SixdVflnDdq4eh
         /bOMwe1Ovtb2ux2EeX0EUTqnE+gg5ePCy2u7C3DVeRqY8sLrnxLLoiaFx7Fz9wNguONc
         YUwK24X9w7oSLOaWuptQwrPQuSaWA0BaT4y/g8sd1EKQaolGoBM7Iw2wTxJQJ4joMRIx
         YsiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FUuxYFYs;
       spf=pass (google.com: domain of msnitzer@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=msnitzer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7BTBEPdpI6E1qaPK47xa5RO7q+c03mRc8T1n9usBC7o=;
        b=q2xBBSLy75T32xfpWD1QdOGr6WTO8H0Ph1f5zuUulJ+5/q4LeJ7DXeepRlqb0HA/ka
         AaDbNSEhGpFOYZ4Jpv+kW1x03xmY5rlemR5G/6f26XWAvHDWthmFC64Am8aT1GFoPQzz
         nsiGex/rfijFzPZWheBJpT69axzJcWZrREPA3ID9b/eHu4VqGFwSCshUfPbMXAfxdC3K
         InVnzZs6ZEiIqTS5PjwaVrZBCs5cm+MlbhX12SZO68PBOyKP/hslK/5tTy/f88ww4ZcP
         NDNk924ILc+n0jv2B7rXNFbl05CCPlaTl5WTxYUTnbcAjDvijl7OrT3dRQN2dCCsCwEn
         d95Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7BTBEPdpI6E1qaPK47xa5RO7q+c03mRc8T1n9usBC7o=;
        b=iqzkH9Ql+0zVg9iRZCcpdP0xqTqBhwSSLsUfufnG0/SVaIjjvDsJN5OnwII+3C+giS
         JyJywoHIrE0IFZ6eiDzFKCsj5TdIIfKlQceFhfQFJkpo8yvsAQC1P87llp/3/R8vvABj
         BLU5NOSLWKq5yQFFNrJMSA/iivWA+GdEEfAOgQWJUMhdYRdyPkST5gmXxUVClcD6YtcK
         BI3ULij5fk6XFr62dw/rYRq/KIzuP/r8TBeCTJnCBvulvM64cx7I70Y4KEZW0Dkg1U50
         3cqTENrxxX41r8B5MRl7csti3LVoarNvwlcSeB2aosFXQP3oS/VKlDREPu0IIOjoS/1+
         SKRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hAuH2CCYWKWMQi3QJWG+xOBKkPs1EhcgkXJ78M+sXJ3EgjRUO
	LrQboZ2KF3ItbxUv039nrsQ=
X-Google-Smtp-Source: ABdhPJz9+rwqHI+JGSMjZFm74TuySgNFfSUYsKCSyr9777Odyqrot/yAgmLxrn0O3xy+lcurLcafQw==
X-Received: by 2002:a25:d895:: with SMTP id p143mr10050666ybg.224.1590004371159;
        Wed, 20 May 2020 12:52:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41c6:: with SMTP id o189ls1566492yba.1.gmail; Wed, 20
 May 2020 12:52:50 -0700 (PDT)
X-Received: by 2002:a25:ab4b:: with SMTP id u69mr10842691ybi.457.1590004370775;
        Wed, 20 May 2020 12:52:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590004370; cv=none;
        d=google.com; s=arc-20160816;
        b=dBV5pom8fvQfUyFzd1a/Czk+TbvyGmeLdpM3OIk9IUDeA60CGqMoi7uIV/Dx+byZ2+
         Lz/yLH2lthMj/BAWTmG7udw2l3xRcA+Tl6YDl3455HRBarHvdd9BfrB4m2YhbjJNUSsz
         qSuq1IYRF0cU1R/EeIqsE6QMflqiros76JJK435z/OU71PBm8E03RfUzcP1ArWQVHP9+
         Fp0IkJ9Du+TQ9rWY6S8BmUkTw49ehxRjKtVeHVXHxrAO2VOexlFwUFZg7082tthXQxKA
         aMm8DnZeOWzte64qK/eswe7s8UxydESCOFrPicCh78Vq9Mmg2nj9ZpxFkEYFOjhCixt7
         k8Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9EivcZTpf3ztlQF98sIsr9ZvXOue5IjDr1b0q/dHCvU=;
        b=rHAxZ3nm/GE0c2ysxYkA/fMEDsE8Rhd8NmBJOpRapv0aZ3+JU0ei3ZQOpOx4sRFh0h
         U/q7ciNieENMbaYVkWA+phuK408a9Z/3JioceQ0GwZTCXST0wpzQkD+ibTNLVfd5SyEe
         dx7u7UnQpz9ZM4drblxfPxhMVq37/m1x/ZKqwTJlU0dUfWsyJwQCG3umYlgAilaRfZ/n
         a4Vr2x1aG/Wp2RopFschRwqzNsGuqrjALPIrlvqNBaJj1MQttTEQ4p9r97j25c/N825z
         CMoQB82rrA6ammxwz7K3fciEsy/+VZvpUUcjUnXh8pDcZUOTtRz/2qBRG4mZP2METWxf
         94cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FUuxYFYs;
       spf=pass (google.com: domain of msnitzer@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=msnitzer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id m9si244874ybc.3.2020.05.20.12.52.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 May 2020 12:52:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of msnitzer@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-68-l5WfShIQOcigm5UIWnkeuA-1; Wed, 20 May 2020 15:52:42 -0400
X-MC-Unique: l5WfShIQOcigm5UIWnkeuA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5052E107ACCA;
	Wed, 20 May 2020 19:52:41 +0000 (UTC)
Received: from localhost (unknown [10.18.25.174])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F3E1D60C20;
	Wed, 20 May 2020 19:52:40 +0000 (UTC)
Date: Wed, 20 May 2020 15:52:39 -0400
From: Mike Snitzer <snitzer@redhat.com>
To: kbuild test robot <lkp@intel.com>
Cc: Hannes Reinecke <hare@suse.de>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Damien Le Moal <damien.lemoal@wdc.com>,
	Bob Liu <bob.liu@oracle.com>
Subject: Re: [linux-next:master 8920/10701]
 drivers/md/dm-zoned-metadata.c:2468:6: warning: no previous prototype for
 function 'dmz_print_dev'
Message-ID: <20200520195239.GB4926@redhat.com>
References: <202005210326.AIKCArlF%lkp@intel.com>
MIME-Version: 1.0
In-Reply-To: <202005210326.AIKCArlF%lkp@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: snitzer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FUuxYFYs;
       spf=pass (google.com: domain of msnitzer@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=msnitzer@redhat.com;
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


On Wed, May 20 2020 at  3:31pm -0400,
kbuild test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   fb57b1fabcb28f358901b2df90abd2b48abc1ca8
> commit: 5990119677a94b79da19c01770d3fe0ceda77229 [8920/10701] dm zoned: add metadata logging functions
> config: arm64-randconfig-r005-20200520 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e6658079aca6d971b4e9d7137a3a2ecbc9c34aec)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout 5990119677a94b79da19c01770d3fe0ceda77229
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> drivers/md/dm-zoned-metadata.c:2468:6: warning: no previous prototype for function 'dmz_print_dev' [-Wmissing-prototypes]
> void dmz_print_dev(struct dmz_metadata *zmd, int num)
> ^
> drivers/md/dm-zoned-metadata.c:2468:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> void dmz_print_dev(struct dmz_metadata *zmd, int num)
> ^
> static
> 1 warning generated.

I've now made dmz_print_dev static.

Thanks,
Mike

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520195239.GB4926%40redhat.com.
