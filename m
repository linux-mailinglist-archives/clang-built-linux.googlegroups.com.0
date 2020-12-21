Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3N6QT7QKGQEYV7TIPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFBD2E0265
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 23:19:26 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id a206sf15496564ybg.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 14:19:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608589165; cv=pass;
        d=google.com; s=arc-20160816;
        b=kUKwP99ToyE1krJd79UHptTgYIw0yB8M9/ZdV8wP+56UuKhvu235RBCkUVNrLGhRAa
         z43UVkgHe4Prsll37nqy+6q4cKX4tnmmiHPBsGCctcBEp0lSpmH4+kQh8ASK4cB4hxEY
         V3D9TMQoTx/ag7XMUnuHZir7BugoX6HotppIdWEfBZFuTAIFD5WOqUnmaWSVcD2VviLU
         SMNcK4CzJwSUdzbwQ21pqwkI0B6rJ49VvuwYbIa26at+pHRm307ZoQjF1PL6qlA1YGXA
         Cn7w2kg5yUN2E+NQOOCr6qpKa+DH8HS5U4D52JfhzECWB2It4p5DP3LTfe2Se4UJrMs4
         GycA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=nNgM42p/SxqYHF8Gw3UtRY4m2f3CbyJK5m6/ElIJ3ak=;
        b=YJdYE5qUTt92XFG7Iz/fHvCxieSX/pEZiQ2N1t8pl5tngmhuB6q6X5vixPg8rVap4r
         S2xLpb1CWbCdbE0EhIIL3O/GfRSAgOCwiIklhTxDPU6OizZPkvEZg2fImUMN/79rXNJv
         WpxDX1vCeUIwippRAZCy++0USINvNNitmpt5ndqw8A6KUGHAry+fmJBS2IMJl5ItvPjH
         /oK+vsGENmFec6oQOp5vLPQtR6nv4ZilueOEeGRSmylddHJrIfE2cZGl/S294CB5kAFc
         yXhxo/SeVSi/PAKp8z2rcjozSioCtEb+7OC2W5G3bjuxPHkfmiPcO0svn6Vq1ry3HK6L
         nTKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WzGrtARC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nNgM42p/SxqYHF8Gw3UtRY4m2f3CbyJK5m6/ElIJ3ak=;
        b=ls4bUI+0xi/KeL1SrbUJXQcNnvJqW51YAKyWm1XMOC8n8+fmylRwB3deDpwS+t/53T
         2eN4D4O/2AYU9bAyOksHUHaCEPUfkoATL8vDSa6rUoNv5tnWpkm1jaWgN+xc7cPdWmEh
         MFDlo7JB18V8IQeaNrdpiLw+z5Si0bImQHjOBJVx6U+bt5LSm2+8v3+8puNCbYx/Ea7o
         jXErl6I+JAhEWvt8f8B38/73U8rCYnF941cM20UTPltyb2qjwgR51Ux7xvbIC0FjYooX
         Mx/jSKhK3w0qx03AU2liNX3Fj8+ecnJ4mIa+FDZ0R39m+vD726EiRUeGIDc+Oo9uSFn4
         DGxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nNgM42p/SxqYHF8Gw3UtRY4m2f3CbyJK5m6/ElIJ3ak=;
        b=p7l249fk9PITaDygsFTZwUmpoJFbcjzju4v3zv8v6NG6d1AKSYpN4k0YW4EhHFv0AN
         VGPcXveUrfGLPwmTU7f9OU83nI2DqoAJccIuFyOPW0mcB06XiyN6a0vDv2lETcyk9kLx
         H5KrxnlnvLuWuk7MAmEwxwnO01lasJzQJ0n7KKHNJksoE7sFDf3n/HtHqdsTir/OuG52
         XPGcWhu3uHkMoBCIV8VnG0PwQ1qTTkvg0O1XtE3dY6xV9tnqgun7lxZp7s1jTYSL/veA
         wWgz8XyZbl+odEdmsJUxa+RFxHukiLPR+27or7SwgAsNiFM6Z7WaOBxICsJLhRhEaJhV
         xXCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nNgM42p/SxqYHF8Gw3UtRY4m2f3CbyJK5m6/ElIJ3ak=;
        b=orVmpuNGfT9VWvt8bDt/Bk3MWykTE4UQGIoCy/r8wk/lN2RoHEbvXOkC5IuWtuBo/T
         Wn9AZHxp75zm2zNuVjac9xnolTo3CxK+d9D9ese/AktdPbsYMoT2o1kOnvBSLil7GCtd
         5gvO1TFIOlxoQgahVzqnDZUQD9fyf+yEorkr/R6FLfkefwvXJGcfGKXHhCE6/3g4bgrl
         DMLUpqveOXOVFJBy/weLS8A1URJrtvhYOA0RVX7c9fxGbu1uecuk62FI23S90kgHOxP1
         betcLEPzIpLw0ZEET13rmw6AUycGsMqTnoZZdYtwQENyCz3Ol38nyVviaa8GP9MYEcOE
         MaKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533669TDWTEC4E8vz1E71llOPu8/NrpOy/gh7NHhfcsdmXZ+HoO9
	1wL4UxDe3CHEGMX/k5dYQ/g=
X-Google-Smtp-Source: ABdhPJzygsWVT/GzAzHgTeWCvV51IOoXwlGeZJbATx2Hmz+IovoMxBIglre6+nf7arMFQfQ+LAGumg==
X-Received: by 2002:a25:bccc:: with SMTP id l12mr25621428ybm.295.1608589165519;
        Mon, 21 Dec 2020 14:19:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41d6:: with SMTP id o205ls20095053yba.10.gmail; Mon, 21
 Dec 2020 14:19:25 -0800 (PST)
X-Received: by 2002:a25:b195:: with SMTP id h21mr26421610ybj.406.1608589165092;
        Mon, 21 Dec 2020 14:19:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608589165; cv=none;
        d=google.com; s=arc-20160816;
        b=V8KMbIlvdQSA9Gpz5iLorJtCh7m34GBPkkBLjx7ThXCPtT+JqvzshPUCh1tFofgf6v
         zkNqsu3BLfbgnWTE7N+SBAYpUrTREqqxmU3MweFK2itaRSS4M9uwQegUhLBdoJI7GmIX
         2vNOqMnmK1ieJf9OENFm2ESpKaSNBLnKwc4x9kyYq1fjqjBmLHm+F2V+KGzIcm+E1/ez
         Ej62Ynlf8CiRKx4LqRXDclW7qvC0Bzag5C4efhqO43i1BFzXBClmBTtYsa3euKkS2/bY
         atqr0jcTMQJI6uy/seIS1D8xWyv3lEVE8k3vzvU+lqsG4hhkIL6NE4nRPoLq482LLu7j
         y3dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+fhUzybbi4TInitVml+0A9FUklaZCumV8wPWH1lRv8M=;
        b=hcs4vSt03AEQ0u84LKYmDJMYkk5XyRf9FbzJEyP6IjFqwJWKLCXeGYBXdKV///RVof
         r/XX8t4d4KBUftOrB3Vv4ujrsmwx1nU3MQxR4GEnMJUoR7D6dAMkeWiEpch6V1J2AHyj
         YeIdEXUD20FVK5L7inC/AcmnDoLFfuzay6RJ9/iO7HScTUD9xVup1jWgYKPMS0jdZBnQ
         BChWUMmq6RCF5eU+G+tIcTUtlLHpASN0nJENxdIAFSO9/Xxg5zI2oLR42xTBexW2FnGi
         j5JBIMCnubaeoQvDPG/V9l642fgWDwPvtNlGfysmKPwvpFEubxj4f2InnHB8NE8skKOP
         pBmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WzGrtARC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com. [2607:f8b0:4864:20::829])
        by gmr-mx.google.com with ESMTPS id r12si1605578ybc.3.2020.12.21.14.19.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 14:19:25 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) client-ip=2607:f8b0:4864:20::829;
Received: by mail-qt1-x829.google.com with SMTP id y15so7760369qtv.5
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 14:19:25 -0800 (PST)
X-Received: by 2002:ac8:742:: with SMTP id k2mr17777072qth.46.1608589164708;
        Mon, 21 Dec 2020 14:19:24 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id x28sm11046342qtv.8.2020.12.21.14.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 14:19:22 -0800 (PST)
Date: Mon, 21 Dec 2020 15:19:21 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: "Darrick J. Wong" <darrick.wong@oracle.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [djwong-xfs:realtime-rmap 245/249] fs/xfs/scrub/repair.c:2202:6:
 warning: variable 'is_free' is uninitialized when used here
Message-ID: <20201221221921.GA3388751@ubuntu-m3-large-x86>
References: <202012220357.ypoONHum-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012220357.ypoONHum-lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WzGrtARC;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Dec 22, 2020 at 03:22:03AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git realtime-rmap
> head:   62eb0024d510607ecb04789e8b4f8c0975efb08b
> commit: f4188e5ab1984e1b140433a80f223ab4644801af [245/249] xfs: online repair of realtime file bmaps
> config: x86_64-randconfig-a011-20201217 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git/commit/?id=f4188e5ab1984e1b140433a80f223ab4644801af
>         git remote add djwong-xfs https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git
>         git fetch --no-tags djwong-xfs realtime-rmap
>         git checkout f4188e5ab1984e1b140433a80f223ab4644801af
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> fs/xfs/scrub/repair.c:2202:6: warning: variable 'is_free' is uninitialized when used here [-Wuninitialized]
>            if (is_free)
>                ^~~~~~~
>    fs/xfs/scrub/repair.c:2189:16: note: initialize the variable 'is_free' to silence this warning
>            bool                    is_free;
>                                           ^
>                                            = 0
>    1 warning generated.
> 
> 
> vim +/is_free +2202 fs/xfs/scrub/repair.c
> 
>   2173	
>   2174	/*
>   2175	 * Check if any part of this range of rt blocks is free, so that we don't
>   2176	 * rebuild things with bad records.  Returns -EFSCORRUPTED if bad.
>   2177	 */
>   2178	int
>   2179	xrep_rtext_is_free(
>   2180		struct xfs_scrub	*sc,
>   2181		xfs_rtblock_t		rtbno,
>   2182		xfs_filblks_t		len)
>   2183	{
>   2184		struct xfs_mount	*mp = sc->mp;
>   2185		xfs_rtblock_t		startext;
>   2186		xfs_rtblock_t		endext;
>   2187		xfs_rtblock_t		extcount;
>   2188		uint32_t		mod;
>   2189		bool			is_free;
>   2190		int			error;
>   2191	
>   2192		/* Convert rt blocks to rt extents. */
>   2193		startext = div_u64_rem(rtbno, mp->m_sb.sb_rextsize, &mod);
>   2194		endext = div_u64_rem(rtbno + len - 1, mp->m_sb.sb_rextsize, &mod);
>   2195	
>   2196		/* Make sure this isn't free space. */
>   2197		extcount = endext - startext + 1;
>   2198		error = xfs_rtalloc_extent_is_free(mp, sc->tp, startext, extcount,
>   2199				&is_free);
>   2200		if (error)
>   2201			return error;
> > 2202		if (is_free)
>   2203			return -EFSCORRUPTED;
>   2204	
>   2205		return 0;
>   2206	}
>   2207	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

This appears to be a false positive. From the config:

# CONFIG_XFS_RT is not set

which means xfs_rtalloc_extent_is_free evaluates to ENOSYS and we never
actually make it to that if statement evaluation; however, clang cannot
see this because it is doing simple static analysis at this stage of the
pipeline, not seeing that it will never have to use is_free in this
configuration. A simple reproducer:

$ cat test.c
#define func(a) 22

int main() {
    int error;
    _Bool is_free;

    error = func(&is_free);
    if (error)
        return error;
    if (is_free)
        return -117;

    return 0;
}

$ clang -Wuninitialized -fsyntax-only test.c
test.c:10:9: warning: variable 'is_free' is uninitialized when used here [-Wuninitialized]
    if (is_free)
        ^~~~~~~
test.c:5:18: note: initialize the variable 'is_free' to silence this warning
    _Bool is_free;
                 ^
                  = 0
1 warning generated.

Obviously initializing is_free to false will avoid this warning, which
is probably the simplest fix.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201221221921.GA3388751%40ubuntu-m3-large-x86.
