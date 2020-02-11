Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRB5UFRTZAKGQEWFBYWPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id A71E41599E7
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 20:39:34 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id d21sf10205658edy.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 11:39:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581449974; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q8GgCTs3R+5Rx2FYplYTLHjRWIIeP66dXdyVY9hAoHEQRU7f/QhuJrGLbOqUkyA2Jm
         Z4UNF5korZE/Yi2Lwki2u+dYqaj63o01je8svWxy309oWFow/JGLqMURDY7OBEMWV3XG
         wpqjXsaLz4sllG91y+lmb1IPpSpPTboBS5zwcTa9RBYmLqNZmz1fWtARkXl+sVHojIa3
         dvGEag6DYxxaMM5TcRNzxvZD1Tq7DBa/NWKvi1i+UaPR0RxwA+rpd2swjEBWtvfuSTYt
         kTVrmFIkZJwEs7ZavtnrjGm9I0LlM53XjO1XBhlGL2DxokESZUjJAEhZh/bAFonhFQyI
         Vbvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=esSoHuGHymnbr4XB4+0xtZ6OOk/45q7RdgtS+r+I6lE=;
        b=t3wBlMlDylHWuQ1BDdc5io46nkvdU/9wKxPCItJYzwuTbDkQdCvh/FUisih6bFrWyD
         5ikaxuocrNQbydT2UTCp2QQdpcHMWtE7HeddCpcc46b450eppv2qJxJ8vadzMVv8NBwo
         u6lmJyX8j79vDLIQqTw+zAZk9OXCr3xhl9Gz8/VWFC2KGPgjfiRRi3J6yBVVTwz+99r/
         +J0vEhPyv6q/9Oe89XmqdTb0rLNcbWkqB2i9mmMFpgrciEJfMhHl8gXVN2Aha/NI8f8F
         hYz/yqzPvMRwnWNWsySaH9uIWN4tSj9nhr3l9CF9WvqL/Loy9nKHwHCmOrhxTrFS4Q0x
         SvjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=esSoHuGHymnbr4XB4+0xtZ6OOk/45q7RdgtS+r+I6lE=;
        b=Em1VwB3c2/Yxzlowzj1cLfUE0Dd2wMUf34HBPcQFlBac0PjRwzE4KyPmX3AU5OKy8F
         mA7e92jksaWMv36QfmQWXCBgQzmR/ojiuwkQoHW0VO6uGaSWu4bAg4CIapL73Z9lNNvB
         ow04A01a16SB8vaqiFYYTms2qXAbBCjCdsokzR1XF2tyCZiTfIW0w/NU/CKG9+ivYyL+
         oLs2sQcQo7ZgN10yBLdmORv+yyIHNCJbA6CNSi1z+IJXrF4u8N/XP4OQd+MhbLm5hAOB
         Z+Wv/Y685BYyxXMCczPef6WR1hi+yxK+hjfIGAqatKyCvzOi7C00RKFrjN+NZyF9R3eh
         Hz2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=esSoHuGHymnbr4XB4+0xtZ6OOk/45q7RdgtS+r+I6lE=;
        b=sGCaiOVmYMPbq860zkRNSfkRQi86MT3vdBRcnP+b/hlEqabjw6CX8k10mf79XNxo2t
         2KGv4el1Tu/RGTc4FljWMBweHJ9HSCyTBSub3ZK7HdtYPtLx2fZvCB6+6o/kUf0/XDdG
         ToyR6is6lcnYvO4JfvvARo6M1+SKrUzm/HHw5Eh0dg9jO1swzzJGLhpTdeXYJMEWYnna
         xuRONpVkpzGd1jF74zkPaVtYKMuNLsmnKnmenA2LJ8oo4Qn0+sD7ZrF7hd7p+KDZWhKY
         fWP/IHwy8OLnuNyjHRrlYXl5D6q96jk1iA9kgry4vgzdD6cvp2Rlw/4ahCuKCdvrginr
         skGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUmLHx9Jg7+zdChfBI55ExcXxYykYuDirt3ygMq5nX7Y5sebFml
	F/nOqjk+zlFwQpvi7p5NRVM=
X-Google-Smtp-Source: APXvYqxl/fsJkuPfbLR3MHRUAi0QPknmsX0PdxUoMILTBviQTtZ9LRkXRr35X7ucpshEiiNk1xMvJg==
X-Received: by 2002:a05:6402:282:: with SMTP id l2mr7600042edv.187.1581449974447;
        Tue, 11 Feb 2020 11:39:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c0d1:: with SMTP id j17ls6902103edp.4.gmail; Tue, 11 Feb
 2020 11:39:34 -0800 (PST)
X-Received: by 2002:a05:6402:3132:: with SMTP id dd18mr7569442edb.118.1581449973923;
        Tue, 11 Feb 2020 11:39:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581449973; cv=none;
        d=google.com; s=arc-20160816;
        b=O0bDIO9NJLkyexQU4vZP0NCrv24pnvtKJA30VLuk8nD1AhFsk383nHNaVoiuY7KIyh
         vMLw9pBsDmtLIQhthB6bLPfAxIhBp8ru1LDoAL1hEl0LlKXx7o9d8BAEwxz+7O8OPevx
         PtJbLl5UlrOX3HieoTLEs6uP8JlCaagwKgYxflDGRpwfHLWQvOwhojmm+uY2Q5t9lMzd
         rhb9gequooLHNfZzM+mOPtnCPosuja0zoN4QCJ2c6fs57jjjJPvlTx7S/KZLH6g0WsS4
         TES+3EQtCSLZhcfgMsM7BXY02mbIA1C98cQHPEgu9JVbyFKxp6DYmntaPrOd6dnhqizw
         2rkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date;
        bh=HQn13uVIpIH4bxZkP0EmmAisAGITCvNRyAd5cjJ8QD8=;
        b=YszLylU3pF3jQ3wFt4urJ4HJ/IJzVb2Zej9GTAs/nlZkozuf1EGwiGvkIfes799yyN
         PWub5rCZpwLzUDaRBc3ftpZ9tIYKEys7jgQ/yrgR0pNGYHibZRNMkCs3wDf7XsY4wG9E
         ivaRhAnFU8Nu/iWBHzjBkAAQTnd4KJw0towODXQs6lXPE3MxNbS+vLZ0IflbHpNp+SDA
         HOlUsfaFt1p4QgmgERFr65xM2OZl89o6LzjIuM3fk0l/ZnNXtOZ4mhoPytUVU/1iQg2r
         NPoSq2KeUSKwyHaER4W3Yf8ont9wWEo7E7IOa9oF6/uNBNSrzbpKLbppuglEBDHNxhTs
         opfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id df10si265844edb.1.2020.02.11.11.39.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 11:39:33 -0800 (PST)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 464F9ACD7;
	Tue, 11 Feb 2020 19:39:33 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id 82A40DA703; Tue, 11 Feb 2020 20:39:19 +0100 (CET)
Date: Tue, 11 Feb 2020 20:39:18 +0100
From: David Sterba <dsterba@suse.cz>
To: Marcos Paulo de Souza <mpdesouza@suse.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Marcos Paulo de Souza <marcos.souza.org@gmail.com>,
	dsterba@suse.com, wqu@suse.com, linux-btrfs@vger.kernel.org,
	hch@infradead.org, josef@toxicpanda.com,
	Marcos Paulo de Souza <mpdesouza@suse.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCHv3] btrfs: Introduce new BTRFS_IOC_SNAP_DESTROY_V2 ioctl
Message-ID: <20200211193918.GI2902@twin.jikos.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz,
	Marcos Paulo de Souza <mpdesouza@suse.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Marcos Paulo de Souza <marcos.souza.org@gmail.com>,
	dsterba@suse.com, wqu@suse.com, linux-btrfs@vger.kernel.org,
	hch@infradead.org, josef@toxicpanda.com,
	Marcos Paulo de Souza <mpdesouza@suse.com>,
	clang-built-linux@googlegroups.com
References: <20200207130546.6771-1-marcos.souza.org@gmail.com>
 <20200210234158.GA37636@ubuntu-x2-xlarge-x86>
 <45c807f4298b22eaa1a89741bee67721fa0b0f80.camel@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <45c807f4298b22eaa1a89741bee67721fa0b0f80.camel@suse.de>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=dsterba@suse.cz
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

On Tue, Feb 11, 2020 at 03:57:21PM -0300, Marcos Paulo de Souza wrote:
> > We received a build report from the 0day bot when building with clang
> > that appears legitimate if I am reading everything correctly.
> > 
> > ../fs/btrfs/ioctl.c:2867:4: warning: array index 4087 is past the end
> > of the array (which contains 4040 elements) [-Warray-bounds]
> >                         vol_args2->name[BTRFS_PATH_NAME_MAX] = '\0';
> >                         ^               ~~~~~~~~~~~~~~~~~~~
> > ../include/uapi/linux/btrfs.h:125:3: note: array 'name' declared here
> >                 char name[BTRFS_SUBVOL_NAME_MAX + 1];
> >                 ^
> > 1 warning generated.
> 
> Sure, I will send a new patch to address this warning after this one
> gets merged, since this problem existed before this change. Thanks for
> the report!

Actually the warning is correct because you used a different macro:
BTRFS_PATH_NAME_MAX (4087) instead of BTRFS_SUBVOL_NAME_MAX (4039).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211193918.GI2902%40twin.jikos.cz.
