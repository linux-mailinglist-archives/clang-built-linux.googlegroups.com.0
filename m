Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBO5SZL3AKGQE3FKELUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF681E92EA
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 19:34:52 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id d64sf2671070vkh.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 10:34:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590860091; cv=pass;
        d=google.com; s=arc-20160816;
        b=aQmS4Kv6MSaketuU/ceHTpmX+KHXmeWWDHDejAl34GmxNc/zGUbnIwj2geOhrQbHop
         TsfVWxdF5TBVLpK26GWG0iI5P1SfObmNwzkv8TKCWqsBPTbUEgnLmtk4comeut25y1nM
         8MFTSdVjuXOuLkHasU714D7ufZ7vjgW/CFkAQTjj4Rv+iVOqavMQ/hKISA6chDcwM7H4
         yjQMh6A/3nX+L4B0KeS1jsyEXv3JZktmtTM62LkL6m7VKtFHbVcLynxPrwb8z5IZ4YQc
         acgi2EZKsnGohYl9uwm5l726Hsn2K5x1Sj0ribOY88Aa+5tjAkt0YgmJU4dlJTYhyKuo
         +5Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1cIVgb/JgldZVPLUNDC6r2yw7R0rDBEUMG9LSz6f1PM=;
        b=v6h0qRkzoMaXQz62WgwxOgrww3wAijsn6IJSbxS0k5DQ2/Z1IXWeQZlYa0JIeb8D97
         7bEZr4eLPWY0ysq9UaCkgwAHEawMW9brbAWXPKU6ONFeihK5KgOhs2uMeBleRoZMMnwT
         8vBWamzHOPhmX9S2o067CeCDOgV1PQeSGqUUeY+m1uVpvXECk7xgAiQ+J7v2cwsI2Ff2
         ad2v2ZZ27xfY3VhVfw7i5iHa9ZA5Af6hG0h/cmL39pPzvGKOmsN0+KT2TOBTu7/J5cRO
         1dAVb+mouDJMdWt8ga8T2P/Kk1q72elf4zp+8ezW97G0qoKn3f5wXpSa2LTQbB7H15wR
         DjKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VLCeehiT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1cIVgb/JgldZVPLUNDC6r2yw7R0rDBEUMG9LSz6f1PM=;
        b=JlG1JOfKS5HpbrGnZhWD0F66aA9f+NqC6oAAlX+vvmBVki5ZIQrjEfR7yia8T/67k0
         pOFeH7+ZYtsaM59oojki+3LgeS+dUDpQbSD2PwXRdJrST0FiwbTXo0hPDQ3nfpe/s+G7
         6fsdhMDnzbVRzUYEheFtArDvTQDG7ksg1Ye0+Iwa6MClO7upbGeyPHIo8A5FiTJrdM7c
         6Jk3oMWm4sGmMbXktqRc8KUT0vqFo8eFZX7O/nwtP5wFU6eCcpbiYXCq/x4muQCizYHL
         DgzS0ezgFuRjRJ6z10ROrzcq5atpoFNjIwVao8njBEICGAX8n6om1tu+pOYlDuw7RKzv
         xc3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1cIVgb/JgldZVPLUNDC6r2yw7R0rDBEUMG9LSz6f1PM=;
        b=qa3KJtaKaEAMhbzQGb8YLe3EcZAtV1Ydy8O+mr+FqEfHZzp0Z1RxtpmLtO6jR31i7U
         0OSqufvpNtKn9tgEV3qbs58ekEw6hYpcpFaWgORXPAWmCemNxx+POuPVT5iCnEg7RNvZ
         8sRlVa9qHsPaCsx4PDKd1NrLjZS9+/MgLPF9tNPlU+fKsvPNj7ROhoso2MKRvIxfLzeZ
         YtEEXp+tciF9/HC0219pt/ca02vwf7Kr0RAf7z0DLnNzp6Bn088bOcAySp7AcJ8LVjlI
         eIznDzoxWfjvtACcW3DSjt8MsTk8xFm/l7NQ9J1CUJJ3VS8mwnFAEsLQKnXGaDrUUMb1
         PLZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CrJAKIXRuo35M2/0KbBD/2qAeDAB/U/TjwupEE5spo3gIsH9R
	PF856ipqbdltQuN5EA0HZcs=
X-Google-Smtp-Source: ABdhPJw5bg4oi+UB45vw1ZjXAmMqdpI5sRWKeJxzmB9Gmg1GNZld4nN14l6quoqiVwRdm1MRpIEicA==
X-Received: by 2002:a67:71c2:: with SMTP id m185mr10002032vsc.186.1590860091131;
        Sat, 30 May 2020 10:34:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:138d:: with SMTP id m13ls660884uae.9.gmail; Sat, 30 May
 2020 10:34:50 -0700 (PDT)
X-Received: by 2002:ab0:3043:: with SMTP id x3mr9869200ual.123.1590860090762;
        Sat, 30 May 2020 10:34:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590860090; cv=none;
        d=google.com; s=arc-20160816;
        b=c7INlR3Ftsy4uom1xAwQf0ATNNuEKaRNYpcVWxiGYqpGdGiuvhJhrwAMDkXX7uB3sx
         RxyYHSpuVM4IUe9lfX5rHtj4/i41mxW8qJNaJUj6qcWEdoSKi5FVvggph34/am9glPJv
         DIGEBMOgLW/hw2HJRO73AmnGZOS01S6RAGOi7VO0Rzi9C3hhtaqZrs86hoIiMZa3HcFf
         IVi0P/+nwmcMd6Z5Ddx421PNMrKHSBF4XNgJx6yIRXigVRR2b+qdFL2K6yoijv3C/joe
         4yC7CuPaYn0QdTeIvtH0lLFcVyB7k3Q2b+6ZKSmAw23Xb4IncnizzzDA0O0mIMG9514B
         RFsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bkdQt+hUhmsLQtyRdv7elEvJP46iW/NbUhlSVsy0SeA=;
        b=nIP1DJOqb72wvhuKdtzfzXfJqAfl2aEQUE2Y6JCiQtFlaGzvvEjTMCfgwxIBSCE5E9
         JGKGshUP/P/wNmLAkmUk5Opxsa0LZdfgPcokxYzYOfDkubYOHIlg9riOc+OrRcIJi+5f
         O+TVo1MDwy6ZBfLfQHVT0edEv7I8p2QE1WBgNoeSUHs+fpERwziwU2uTG58vlz6ZXeEs
         dLHH6YJQ7or59J6ercWSVetcTJaBNeOb2gMwIYWmc7p5ZsosTgIoq7AW4Gq404GcnAet
         tNh68rloh1nG90euAqnFBlFMbPPIXfEY3Ki1AA28uHDZaauLdOsqMfzZx9rRoqfELHih
         MA9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VLCeehiT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id a126si686744vsd.2.2020.05.30.10.34.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 May 2020 10:34:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id i17so2499941pli.13
        for <clang-built-linux@googlegroups.com>; Sat, 30 May 2020 10:34:50 -0700 (PDT)
X-Received: by 2002:a17:902:6903:: with SMTP id j3mr13775757plk.110.1590860089467;
        Sat, 30 May 2020 10:34:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x19sm10475472pfo.96.2020.05.30.10.34.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 May 2020 10:34:48 -0700 (PDT)
Date: Sat, 30 May 2020 10:34:47 -0700
From: Kees Cook <keescook@chromium.org>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [kees:for-next/pstore 8/35] fs//pstore/inode.c:288:16: warning:
 no previous prototype for function 'psinfo_lock_root'
Message-ID: <202005301034.C76C7F9@keescook>
References: <202005301645.xhmuTeZu%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005301645.xhmuTeZu%lkp@intel.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VLCeehiT;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, May 30, 2020 at 04:38:48PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/pstore
> head:   3e01c33ced486b6ba180486f828b2b317c0fda01
> commit: 6bcaa233a90ba3be98a6093cf346ac51eb05258f [8/35] pstore: Add locking around superblock changes
> config: x86_64-randconfig-a015-20200529 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2d068e534f1671459e1b135852c1b3c10502e929)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 6bcaa233a90ba3be98a6093cf346ac51eb05258f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> fs//pstore/inode.c:288:16: warning: no previous prototype for function 'psinfo_lock_root' [-Wmissing-prototypes]
> struct dentry *psinfo_lock_root(void)
> ^
> fs//pstore/inode.c:288:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> struct dentry *psinfo_lock_root(void)
> ^
> static
> 1 warning generated.
> 
> vim +/psinfo_lock_root +288 fs//pstore/inode.c
> 
>    287	
>  > 288	struct dentry *psinfo_lock_root(void)

Thanks! Yes, this should be static. Fixed now.

-Kees

>    289	{
>    290		struct dentry *root;
>    291	
>    292		mutex_lock(&pstore_sb_lock);
>    293		/*
>    294		 * Having no backend is fine -- no records appear.
>    295		 * Not being mounted is fine -- nothing to do.
>    296		 */
>    297		if (!psinfo || !pstore_sb) {
>    298			mutex_unlock(&pstore_sb_lock);
>    299			return NULL;
>    300		}
>    301	
>    302		root = pstore_sb->s_root;
>    303		inode_lock(d_inode(root));
>    304		mutex_unlock(&pstore_sb_lock);
>    305	
>    306		return root;
>    307	}
>    308	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005301034.C76C7F9%40keescook.
