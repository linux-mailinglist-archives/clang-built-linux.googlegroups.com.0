Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFXK6DVAKGQEDKIGTGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D16296831
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 19:59:51 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id d64sf4616741edd.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 10:59:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566323991; cv=pass;
        d=google.com; s=arc-20160816;
        b=iLrKeZ7q9le/jivpr4TF81iyVpKhAIQRKYpHuonC1X9ZgPga1pezEdfP2QHxu95jGj
         w88dkQem4083qz+IeFhPjGZZc54p3CGNDcUqEj1fNkcrMifAkDk4YjEIXES3jieq1h3F
         PDZ6cjznLQNhUFhFxDSfCr1/45QgfMtkxmqf1VRqoHKKjhnhzYeyvExiGqdwOFWLaW+D
         sLOT7x+DY0dlxXfcc0ryzQP6+ZGbkkX/dVGDWVR4XULd0wZfi4mlUzdno9erHqP37ZFV
         nrAG6eMFj+4VHw367iG500FdUqiul4++akDgqvBKsWvyej3zkKOVPV0WkrO/bqi41AJW
         z5OQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=yPOtzQUyoMWW//tSuIHxtCE5pApi9ZMDMCrSF/8D9aE=;
        b=01bk4B3uyUy7HTAY0EGFFPxREX0ByY2qjRN1qqsLjrv9WUR+qPVBsTHrbVgomWqjvC
         pyT186KKn5sbDStL0F2Sm3nYijz7xR5Bz2RKek+RPV2vQU6y1t91FJoO40I/oZAtPT8P
         Dr4J6WNh2zkU4VVeYHS4ZWD71jhlzTibu+kO7WqRWLqhbfDsLKSCtXeE4qncI36eiB3S
         uyPD5hMZlQUyA0SrojI+XU9qKe/S9FMGiJ+P1fIdUwP2hd/fJo/t67+kfAncU2/RXfSt
         hBsRYph3mXnZCJmm5F+y+qcO7oEeplrMqLmgExq+KZe8X13Iucqz2FHBNksY9le4Z6sU
         eC9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RVQ0fhGK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yPOtzQUyoMWW//tSuIHxtCE5pApi9ZMDMCrSF/8D9aE=;
        b=R/WFCj4t9uA1tKCEv2t93Sssv7JT4JVimeJdQqgB92CVUy8ceLC1lEwilDzU26ux2A
         rmjbrfQAUJ95MqOdhzzeDwDQJlyBeTQH4tpYhrv76JDxhjxY0P77xn+chbgwpC4uyy/X
         kO8FbKy5CBaO4yAEYadKZpXPS7KbRW+gZgUERBb9WFLmVatBF6n3oMzo6omhSW9u4vjS
         /CRqtPtQ8URBO655PA9zCX3fl1IPlNCh0XTkjW2eLJ1TyHoAFbM/DTE4sBfpJ2IYqUL+
         Nt7FZQ+zolAtQtoLUbMM0psfVj/aXVm0alM10OGrlouIXfYk9cCLS34h09hClARjvDVm
         3tcQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yPOtzQUyoMWW//tSuIHxtCE5pApi9ZMDMCrSF/8D9aE=;
        b=F42pTQ58dQPx92NryL7Lkvuq7tHMmMsfe5XlE2iynEsjgHwjk8szTyhxnyEyAK2zbU
         JjlilP/d06TnOiZmAwDgrzmeQVaZAYyjvn73bdOsutX0W/OnTN8RaxK8zMzDAiPjaFjw
         mHBXKz2+Bl4i0h0OINqZ0kId+yqyYoQc0ilh0p91+A1j2ym5ZhUlF70qAsYqAiSExlLD
         po7mS4jUO/iYoPup7F/khyV4kd30Y2ytHeEJ2EKPvmF/iW+n9c5xW/sRYfpL4l2b2HOS
         guGhwH7wjzwidPofcwtGFXpjIKKAfqw0vF/Dj3RunjjHzG1MFPptiMSk6AHmVvXm+D/l
         O5oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yPOtzQUyoMWW//tSuIHxtCE5pApi9ZMDMCrSF/8D9aE=;
        b=JUVFHpgmnMRMZaQy0XA/c5FlUFgRMHEPPPHVZjp7hVFhArboJ5lTgedhO7AMl5CK0Z
         FQq2e+rhZuS5EF3mOcj7ZnnkWPlOSiFAX48LfVYO0SSP/jLCyTw4dVNInDagqe/PpKr1
         1alM33gOPPLKXVfta3LwU92o4fPHjFgFaJ+jZFKMFnOYYe0nCoqVs/S+Cg5BDwTBJJtX
         5APFX9LPhSzkiimP/CViURRUBhwdaGnQ8w96TNteiX/g8Pbhjobk6rETdMwsgzdn8mNi
         G6HvDOfBmG8+R/SishptveruzfV+5HcfYo2LB+kcUQcbP+CG3ngF//zw7FHMwlOGMQro
         P4jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUOSuVB3fWpjVDF+4v1avbJvJqa2ECNY5U2wDwZc+kPIbbIeMoJ
	9vlnia14HDbpK6rodu3El0Q=
X-Google-Smtp-Source: APXvYqwelEvLJhun48rByeGJYr47KXFzAoSwVn6mNyN2UeBvZcI+So7Two7Dsjegg1A8REqCJQ1pCA==
X-Received: by 2002:a50:a1a5:: with SMTP id 34mr31147126edk.158.1566323991016;
        Tue, 20 Aug 2019 10:59:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8908:: with SMTP id e8ls5622219ede.4.gmail; Tue, 20 Aug
 2019 10:59:50 -0700 (PDT)
X-Received: by 2002:a50:d0c2:: with SMTP id g2mr32544143edf.251.1566323990632;
        Tue, 20 Aug 2019 10:59:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566323990; cv=none;
        d=google.com; s=arc-20160816;
        b=ZD5HAQCHGoHH6kWmgvCt8lN1KsRc9/pmUsDOQVCfv9ev6duOpZR+YJRcfLGJBy4yIz
         j/9Fl7dsUiX6ALQvvO9xooV5JPevkYt6JA+5qnJHzvWKu0KTg2cUwNxs8lKuvjjOuD0n
         D60NSJDrQ8A3Q155I0LwKfxneqaWQRzksmk3gf0Wg/0Cfyp8cXNVRDKtoSqN+4nWNBLq
         06rZgAhQM/aEohYlHtkfzekdBZNEucM+YVMN5qppDx1zFV31P1fIOPZY5y9DgGebDZ4z
         EhYnoIwss5Uwt74icZB/Jo9X7wnhTwm0ljQhncbXc7oVNFJc4vQwnMOcdtut2iv3wHO2
         3+rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jkfeHd+uljmHRllv0Fv7x+jHeK8nUADg8PiIlYrSkfs=;
        b=VDrW2ZbgIcHYOhyEurxA2OLiP9w/pcgmnVVM17SfWbT1rAvbfgA9PJ4NnM1M8AdAYd
         pMdMMH/49bjJAZJh1RtjmyzVF6iCbrDlXrqRXa5SCvDUtl+7R3nBvHKjRn+lGzD1uxmd
         fw2qJPTrqelqzXlV8GEVdDvKA/z/RERhh5EHhDndPcObuxHF21lnfUSEis5DwTyEzth7
         uhCmNt0hU9QtMrf7JbOSIJzBMKCD2ccayLPb10QFQpBJWNKfEkTEAXXx3QWegx8eFQ+w
         X52q4n5ca8VKeH5tJqy+llP4vfX2l4EmL+cM/MCE7Rj/XUob17Rn4mlDA4SVibq6HhV4
         mDFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RVQ0fhGK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id m16si1258805edv.2.2019.08.20.10.59.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 10:59:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id f72so3391234wmf.5
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 10:59:50 -0700 (PDT)
X-Received: by 2002:a1c:7619:: with SMTP id r25mr1317985wmc.153.1566323990142;
        Tue, 20 Aug 2019 10:59:50 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id 2sm21572598wrg.83.2019.08.20.10.59.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 10:59:49 -0700 (PDT)
Date: Tue, 20 Aug 2019 10:59:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [android-common:android-4.4-o 14199/14405]
 fs/overlayfs/inode.c:158:2: error: implicit declaration of function
 'ovl_revert_creds'
Message-ID: <20190820175948.GB9420@archlinux-threadripper>
References: <201908210017.vOWFfbbM%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908210017.vOWFfbbM%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RVQ0fhGK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 21, 2019 at 12:06:20AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> CC: Guenter Roeck <groeck@google.com>
> BCC: philip.li@intel.com
> TO: cros-kernel-buildreports@googlegroups.com
> 
> tree:   https://android.googlesource.com/kernel/common android-4.4-o
> head:   182344396bb187bc0500a32fbd51a55e09ecadb9
> commit: 2695394dbacad66be326ba547a376cfb56b0536e [14199/14405] ANDROID: overlayfs: Fix a regression in commit b24be4acd
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 2695394dbacad66be326ba547a376cfb56b0536e
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> fs/overlayfs/inode.c:158:2: error: implicit declaration of function 'ovl_revert_creds' [-Werror,-Wimplicit-function-declaration]
>            ovl_revert_creds(old_cred);
>            ^
>    fs/overlayfs/inode.c:158:2: note: did you mean 'revert_creds'?
>    include/linux/cred.h:169:13: note: 'revert_creds' declared here
>    extern void revert_creds(const struct cred *);
>                ^
>    1 error generated.
> 
> vim +/ovl_revert_creds +158 fs/overlayfs/inode.c
> 
>     89	
>     90	int ovl_permission(struct inode *inode, int mask)
>     91	{
>     92		struct ovl_entry *oe;
>     93		struct dentry *alias = NULL;
>     94		struct inode *realinode;
>     95		const struct cred *old_cred;
>     96		struct dentry *realdentry;
>     97		bool is_upper;
>     98		int err;
>     99	
>    100		if (S_ISDIR(inode->i_mode)) {
>    101			oe = inode->i_private;
>    102		} else if (mask & MAY_NOT_BLOCK) {
>    103			return -ECHILD;
>    104		} else {
>    105			/*
>    106			 * For non-directories find an alias and get the info
>    107			 * from there.
>    108			 */
>    109			alias = d_find_any_alias(inode);
>    110			if (WARN_ON(!alias))
>    111				return -ENOENT;
>    112	
>    113			oe = alias->d_fsdata;
>    114		}
>    115	
>    116		realdentry = ovl_entry_real(oe, &is_upper);
>    117	
>    118		/* Careful in RCU walk mode */
>    119		realinode = ACCESS_ONCE(realdentry->d_inode);
>    120		if (!realinode) {
>    121			WARN_ON(!(mask & MAY_NOT_BLOCK));
>    122			err = -ENOENT;
>    123			goto out_dput;
>    124		}
>    125	
>    126		if (mask & MAY_WRITE) {
>    127			umode_t mode = realinode->i_mode;
>    128	
>    129			/*
>    130			 * Writes will always be redirected to upper layer, so
>    131			 * ignore lower layer being read-only.
>    132			 *
>    133			 * If the overlay itself is read-only then proceed
>    134			 * with the permission check, don't return EROFS.
>    135			 * This will only happen if this is the lower layer of
>    136			 * another overlayfs.
>    137			 *
>    138			 * If upper fs becomes read-only after the overlay was
>    139			 * constructed return EROFS to prevent modification of
>    140			 * upper layer.
>    141			 */
>    142			err = -EROFS;
>    143			if (is_upper && !IS_RDONLY(inode) && IS_RDONLY(realinode) &&
>    144			    (S_ISREG(mode) || S_ISDIR(mode) || S_ISLNK(mode)))
>    145				goto out_dput;
>    146		}
>    147	
>    148		/*
>    149		 * Check overlay inode with the creds of task and underlying inode
>    150		 * with creds of mounter
>    151		 */
>    152		err = generic_permission(inode, mask);
>    153		if (err)
>    154			goto out_dput;
>    155	
>    156		old_cred = ovl_override_creds(inode->i_sb);
>    157		err = __inode_permission(realinode, mask);
>  > 158		ovl_revert_creds(old_cred);
>    159	
>    160	out_dput:
>    161		dput(alias);
>    162		return err;
>    163	}
>    164	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Reverted: https://android.googlesource.com/kernel/common/+/1c3dbd8b2958707bb606899dc70550d9abc9f6f8

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820175948.GB9420%40archlinux-threadripper.
