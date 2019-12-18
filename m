Return-Path: <clang-built-linux+bncBD5LDHXSYUMRBG6L47XQKGQE5WY36UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2105F1241E6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 09:38:52 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id i29sf120948lfc.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 00:38:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576658331; cv=pass;
        d=google.com; s=arc-20160816;
        b=QOMHyk3UATNSFA/IlAhxB/6C4af078uDNv+hrk5PrV54qOwcTd0NBNiJHoQ/2y7bRQ
         Unw8rJDJ7FSRj0E+20Gx2e6GoOksy7ScDU62sqorQ75iNoflHiE0hhtFZ3FcRclCCGHc
         aGOM3bpZ80PJ68bQ4Lz95JA2RQxFVHcAIy3FiNSPm+jEA7GjSHTuruylnVE3HTeTs539
         izYSLOJ11oT53x653G7uDuEQPBPQYXZnXY97hKAfPKC/i3ZCw/OQQeaLe70uvqTZ3HM1
         3TObx6I+ZTjF1qcmeTnZkSXNJIcw/doZ8HB5ut6Azlu1C9Ffk4kRiXSKb1RkRCBPll16
         4RLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/e8mdpqm+3OGmf53iFE2oNBWejinIkivMvQ5mwLgR7o=;
        b=XIWjG89fA40AEuSjw4exJJ1KHVBvReEqE2BLRkx95Rz65EShIqsd/9bS2c/0vkRqEB
         NDrp6YZTnCGucA5KhdoYo0HfD7mc+DWr2IdUJUxoPP6SZZKE2rUXox5npHAMZXe1gWgf
         nKzwPgG+YodrtIdu7zMsOa2YhDCjY6DX+ff6wkhxNGHUYVCOPDbG8f0xkbspC0AOiMEY
         zl67cmMqxWa3fJMmAuodwoBOg0Vw+HbtojQny9PsjF01cacagJIznvSz7QuokYnbp2V2
         m8gGzEraBlSz2IGh/u02GQA5Qj3X1ZBAkNR1AaIKYznZ526Qq0ZeTRZYo4mp32cC7oQ2
         jGJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/e8mdpqm+3OGmf53iFE2oNBWejinIkivMvQ5mwLgR7o=;
        b=DHf8W4GuC9/6+qPyDal4N74bbh5pk9ibeT9xOjgFK9OeHdRGZgwyGNRWMuds4iOFiR
         gb0+SR+e7IgaMPxs0SmEJUUkUygaEjokokl19jeyysSLU+QxXEXy75RXS2n/pKYHg8Zz
         8Wd5Tn1KxSdezYiivMvMbGaLpgE9Krz8yJi3FTtK7ZYXKTq5usX3N7d8Crw0+POCeCtT
         5/tznPJ+1Rm45L6LDInI4/T2uG58Df0ap3tE2ydWf4THygrEDLIP+89gku+MbCbVZLr0
         H4vS1kFrgQte5RUuox7dhZQ3leBsELKAYYviDd9BdAE0huqIFaxsu/ub27m9OqxLIRmU
         NAFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/e8mdpqm+3OGmf53iFE2oNBWejinIkivMvQ5mwLgR7o=;
        b=Kc4LNi3TGFCE1hFx3TKygr201tdK6FdoyNXbN63cFOmwNyZtKMk7UDIOw7IMNWi1zY
         pJjBXFpbZ+X0ap2+zLy2Eg1iiO+hkY+4t7DcisdzxK+bStQHWSXo2BUUsnkWHGtPcl7v
         FypylXDH2lu4pCPZb+Cr3OTJWezpGtLc8b5gax9p05tAc+QccGCUAMho6Ak2hEH3wjgr
         G520UUbKdQRxNyy1jTcrxsgqcah0d47fKn2pyOUlgxaJGTAtBeAliOk1UmmUTtDddst/
         +ltiKqN3evypjtLq69eME8cj4feAh4tDuAfoAmwN2SU95haLkNZ92McCWW+hDDe+hJJ4
         mj5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUS7E6r/yKEPRAX+UMln+DNowYXlzCfl0D+EFgoIc53UtUjA8Iz
	KWvVlsrOQpLE6LE7dwjW6IQ=
X-Google-Smtp-Source: APXvYqw8edLJ5Xi0eGCbVsaIdVQupaBe47rRXMVOu0Df+eZPu9242BHQFH8HvkGtjk1NhUe5UJkXyw==
X-Received: by 2002:a19:22cc:: with SMTP id i195mr1004979lfi.148.1576658331606;
        Wed, 18 Dec 2019 00:38:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c507:: with SMTP id w7ls118860lfe.1.gmail; Wed, 18 Dec
 2019 00:38:51 -0800 (PST)
X-Received: by 2002:ac2:5195:: with SMTP id u21mr986014lfi.141.1576658331127;
        Wed, 18 Dec 2019 00:38:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576658331; cv=none;
        d=google.com; s=arc-20160816;
        b=05py4baQuhvorFcHFEN5Y6rwRxkAYwYjxxKnuFMnT0eWUfd/+1PqyC85ZekS1szMfA
         sy4vbeH5mV03Odsi4DRYRUkrr0OrsoFZIH4jK1jNq5qW2moq687QHwuKtNC5048Q8hq2
         PdCBi9F9kKn3r7L8yfInNtwQlhDED2z1xBgXWEZ0hn3QG5XwcvYRd6tCteLfNYo/pgC4
         1qBQErRV/E+4EjyN8/mZMvM5Nk0gHC2hmCTp+v7m8N9It/zVkUt3ztGakNpWm7BE5KfZ
         nlA2pKtPSBkulMBcPCixNAng01k3cgQlJm4sc/cSLIdfy8b7MBViVc1d7ghZgZbsd5Bz
         rWuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=vUbyw5f8p9sKX6y90+SNhmXJK2YsDLcK2Q3H0mbsW+o=;
        b=GhTnv2/IwMACCZMCUw29QMBRaeMuP2xNCSEtICsVMVBy8+fhskN32Yg084r/hh7XIb
         mPW1p+qd1DhOlvrgozyr7u47EFS8aaI5CnDU3ejRCMlcX9O2Q6mriEA1Bc6IK4fqpFxW
         ze9Sy9H6LUsiEPtLLxMIzOVHuTWXh/g4X8L65//9eAaCoKqalysq9PyDf5DRg3iJO9+M
         s/uA0dhYf4g2Ped448qA8pV5n7vYYa6qgTZKdJxiinjYKYFtVeyip5pMe+1HimPmVbxN
         cPex5R/Kjo6VYxCXI+98DdiM0rOY7iZhzoy215ZwYcNwzbrowSIuMnDIj1OyOvgq0Dr3
         vtoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id v16si42705lfd.2.2019.12.18.00.38.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Dec 2019 00:38:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 7038CAC52;
	Wed, 18 Dec 2019 08:38:49 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
	id 066621E0B2D; Wed, 18 Dec 2019 09:38:39 +0100 (CET)
Date: Wed, 18 Dec 2019 09:38:39 +0100
From: Jan Kara <jack@suse.cz>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jan Kara <jack@suse.com>, linux-ext4@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] ext2: Adjust indentation in ext2_fill_super
Message-ID: <20191218083838.GB4083@quack2.suse.cz>
References: <20191218031519.15450-1-natechancellor@gmail.com>
 <20191218031930.31393-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191218031930.31393-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jack@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jack@suse.cz
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

On Tue 17-12-19 20:19:31, Nathan Chancellor wrote:
> Clang warns:
> 
> ../fs/ext2/super.c:1076:3: warning: misleading indentation; statement is
> not part of the previous 'if' [-Wmisleading-indentation]
>         sbi->s_groups_count = ((le32_to_cpu(es->s_blocks_count) -
>         ^
> ../fs/ext2/super.c:1074:2: note: previous statement is here
>         if (EXT2_BLOCKS_PER_GROUP(sb) == 0)
>         ^
> 1 warning generated.
> 
> This warning occurs because there is a space before the tab on this
> line. Remove it so that the indentation is consistent with the Linux
> kernel coding style and clang no longer warns.
> 
> Fixes: 41f04d852e35 ("[PATCH] ext2: fix mounts at 16T")
> Link: https://github.com/ClangBuiltLinux/linux/issues/827
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks! I've added the patch to my tree.

								Honza

> ---
> 
> v1 -> v2:
> 
> * Adjust link to point to the right issue.
> 
>  fs/ext2/super.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/ext2/super.c b/fs/ext2/super.c
> index 8643f98e9578..4a4ab683250d 100644
> --- a/fs/ext2/super.c
> +++ b/fs/ext2/super.c
> @@ -1073,9 +1073,9 @@ static int ext2_fill_super(struct super_block *sb, void *data, int silent)
>  
>  	if (EXT2_BLOCKS_PER_GROUP(sb) == 0)
>  		goto cantfind_ext2;
> - 	sbi->s_groups_count = ((le32_to_cpu(es->s_blocks_count) -
> - 				le32_to_cpu(es->s_first_data_block) - 1)
> - 					/ EXT2_BLOCKS_PER_GROUP(sb)) + 1;
> +	sbi->s_groups_count = ((le32_to_cpu(es->s_blocks_count) -
> +				le32_to_cpu(es->s_first_data_block) - 1)
> +					/ EXT2_BLOCKS_PER_GROUP(sb)) + 1;
>  	db_count = (sbi->s_groups_count + EXT2_DESC_PER_BLOCK(sb) - 1) /
>  		   EXT2_DESC_PER_BLOCK(sb);
>  	sbi->s_group_desc = kmalloc_array (db_count,
> -- 
> 2.24.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218083838.GB4083%40quack2.suse.cz.
