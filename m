Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3MI5GEAMGQEHI246IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A313ED2AC
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 12:56:46 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id w24-20020a0568300798b0290514b33107dcsf6448860ots.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 03:56:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629111405; cv=pass;
        d=google.com; s=arc-20160816;
        b=YnVFE8UZ65Rl25iUBCuKS5hHLSvgnCkt+i2lxSReYEmS7DxgiwQNzmyfZALBieiEfS
         XKsVHIguwnhYI7qo0NCBj4704Ji6b0LjRZb4OGt8lhFEOCF6x5NSP/vFct88US9D3o9J
         suXUC/hrrnNjE0nOE2wXVEGlldHEiPyPaxIZ2pb9ljupNmVkgyJFd9/CABc+744TDZ3X
         +LvVaIwcN4H0JjpZ+cRXZR2n98DxyIGwIVI91sGZP/0JlwRI7w0JHiXJYYnwlVNchibe
         dffuuI54StojJXSQl6n24uMENHFylfoAvBmMw1KDXpvqrQepsCwSG4trvfdQwKefMwm6
         yk7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mRVL7q+gSbqybu1MN1Dpx6Ol+EQGGvS+2wvB6wnl4bw=;
        b=utBV9+sALHPp0HuWDhLfTblN2MjT46dTIgcv+SrqN23V3TEy1Ln5eyOLgmyXdB+nY9
         UvS7CZTWI4QHLtdMuS1jHAuAhEiAcGcCNtCgbKYiNzuA5cSPooDS3ITmhSKwyq8PDs+f
         2YvagdGzhIaVerFb74a099VbZUt+tzGUB1j10EreO/UNBo5Gsu1aKd2Xh5o2Eq55Y4CF
         dFttzO1KYjgkFXtZIee/foYuj71N2xj8n+FyXb7ohOGqnBTOaJVdEF7UvDPIkd/XVmXO
         0esR97DZ+4KNbf17y+q90SFTW7qLmdwKkHWZ4/Y47c47K+xdw72F0MPFcQRkDm3fbFUj
         o80g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mRVL7q+gSbqybu1MN1Dpx6Ol+EQGGvS+2wvB6wnl4bw=;
        b=bTJquc1MdUI9LvDJvTQE++8PO+LPIuk8BPs6bADSVXPaX1yDsQbt0ZqfgEjRcYOCQP
         CYX/AZVpCIetvGjOOfMAGMzndxcV/iovwT1Iv0m7ojn+1h8Kj4LFAQEYVq+PieM/z3jj
         wlDNHDivDuWxVKE5MCOCR3kxdu5Un77Q1xKndjfhQ+PRCxCETuYkOY8Xskqp89T2teCk
         CmHhcMeMjnlXFgM3RsHVqYauOWYbWMG54Cf0E/O0SLj2NlX1AUClGmv/xsWwENGse8fN
         EQZdoAj019LHuEBEAM6QTrkP1mqtDMkl2Y+TjQChRQ6MOh8s8+mK8OdUcIPO+C+nBo3d
         rCEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mRVL7q+gSbqybu1MN1Dpx6Ol+EQGGvS+2wvB6wnl4bw=;
        b=eb/SDKjrBeCbq9cxu2Cg82ifU0CPMDK3HsDVZHwTPU347xoPdnpAGs4QIZp+iNWvO2
         wLvUwL180tZuUR4PlF2OWEMTx5383xuEAIWQ0lycaZ3/gX3xspaPb4SHgfdxEGhe2hj2
         JFqD5srHm/2u/t5Q+5+iasG4/ZTY+fRkdZQ96iwvMHvcFCGxf8+GJ1h9IDCl5b9k9lmZ
         zek1WsdLBvsWj+JXn3mvKqkcNhpeogCzK/Ko9RMh6LQwvbxfHtWKTwXr0Q5DbabiiSbD
         x2efUByHd6BBKdXAWDA7et7E/I5L3OgE+xxni3f/XAGxZmefAKDrrni0S02ii/tK62B1
         WjYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ux1vW8M/bsdGAJmJLkRo/jioQz51TiItX78Q3amnW0ePpUSVp
	QBCOSwrX8yOLEx1k9boT/D8=
X-Google-Smtp-Source: ABdhPJyreYyxftjR5l3cvB6EstlatNxgtn3/KuV1LFRCAJ6jk1SxHJiRfHJa7c/gSN96cqjpsMx2Ng==
X-Received: by 2002:a05:6830:1502:: with SMTP id k2mr12018506otp.369.1629111405475;
        Mon, 16 Aug 2021 03:56:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:198e:: with SMTP id bj14ls1964694oib.3.gmail; Mon,
 16 Aug 2021 03:56:45 -0700 (PDT)
X-Received: by 2002:aca:da02:: with SMTP id r2mr10626784oig.141.1629111404918;
        Mon, 16 Aug 2021 03:56:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629111404; cv=none;
        d=google.com; s=arc-20160816;
        b=SPiJ/BUnkO4wlZ8IoF0pUFf32itV1iBgtO1jUMRGfqMBSM4aXug6V6PLyevjCrkB7u
         FmYsT6IYjAsdR0bqz68O0yDtFTpyhUsKFifRK+qUCGKrmvGeHSLh1JDil7Ns2CyXMvKv
         MZl3acLVxpVcUXe82tb3EWxkqFgm08rFF90aEBsnZ+2y44k/PJt6tQW3YD4iRZU+vmKA
         6lsbsmaS6PN/ZZ2QfbRlAN5z6Je8Fk/rvSfCX8E5YbgpHmDj50Hc0Cp9ogJDHN5VI6KB
         cQ1zIGY3NQNnDjUHT3D8cq4k7oxMbCf0Qb1nZOIfCdnDVQZNxKyWrRktTMSoWYVpEHqN
         HaXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=pqc8GARHbeE+bGxScOhclgiPzyhhOrXTldY0JCIriso=;
        b=cuOksvAmHATJFQHsmRhGOscCbfvzn+pXkRjA40IMioPomkoKopRzsHnFVpjgBVUC93
         4Kp8CuSw2iLTdZVk+7gaqWgQFPbNIixCEkoNyOZrCnTzZKdGBbM9iSdIqf5wBM5ZLqeY
         IrIZ+6VBvvbUWvXeYc1FPCixEGvT50S1UdZrhdgpS088tnVbejM2TJWecXKqPcr8PKkr
         617L1zkMra45NsBC6nj3g1dXauWP/xQgNyne3bFnUu/w158USgImkpovw1lpsao3nnZr
         yuYJJJHutjMFLl9CaoBt5rpJfxUmL2O5l/dgtSnH0dfSTYqd233bgH9rY5kC/FYnQvSB
         g6qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id k2si730324oou.2.2021.08.16.03.56.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 03:56:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="279580291"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; 
   d="gz'50?scan'50,208,50";a="279580291"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2021 03:56:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; 
   d="gz'50?scan'50,208,50";a="422809043"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 16 Aug 2021 03:56:40 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mFaIJ-000Qaq-BW; Mon, 16 Aug 2021 10:56:39 +0000
Date: Mon, 16 Aug 2021 18:56:17 +0800
From: kernel test robot <lkp@intel.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: [linux-stable-rc:linux-5.4.y 3729/4278]
 drivers/crypto/inside-secure/safexcel_cipher.c:303:12: warning: stack frame
 size (1032) exceeds limit (1024) in function 'safexcel_aead_setkey'
Message-ID: <202108161803.77BJ9ggL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
head:   f52a40401ee9825556cc803c110c67bfec5f6b94
commit: c2c5dc84ac51da90cadcb12554c69bdd5ac7aeeb [3729/4278] compiler.h: fix barrier_data() on clang
config: mips-randconfig-c004-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 44d0a99a12ec7ead4d2f5ef649ba05b40f6d463d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=c2c5dc84ac51da90cadcb12554c69bdd5ac7aeeb
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-5.4.y
        git checkout c2c5dc84ac51da90cadcb12554c69bdd5ac7aeeb
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/crypto/inside-secure/safexcel_cipher.c:303:12: warning: stack frame size (1032) exceeds limit (1024) in function 'safexcel_aead_setkey' [-Wframe-larger-than]
   static int safexcel_aead_setkey(struct crypto_aead *ctfm, const u8 *key,
              ^
   1 warning generated.


vim +/safexcel_aead_setkey +303 drivers/crypto/inside-secure/safexcel_cipher.c

1b44c5a60c137e Antoine Tenart     2017-05-24  302  
77cdd4efe57134 Pascal van Leeuwen 2019-07-05 @303  static int safexcel_aead_setkey(struct crypto_aead *ctfm, const u8 *key,
f6beaea304872b Antoine Tenart     2018-05-14  304  				unsigned int len)
f6beaea304872b Antoine Tenart     2018-05-14  305  {
f6beaea304872b Antoine Tenart     2018-05-14  306  	struct crypto_tfm *tfm = crypto_aead_tfm(ctfm);
f6beaea304872b Antoine Tenart     2018-05-14  307  	struct safexcel_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
f6beaea304872b Antoine Tenart     2018-05-14  308  	struct safexcel_ahash_export_state istate, ostate;
f6beaea304872b Antoine Tenart     2018-05-14  309  	struct safexcel_crypto_priv *priv = ctx->priv;
f6beaea304872b Antoine Tenart     2018-05-14  310  	struct crypto_authenc_keys keys;
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  311  	struct crypto_aes_ctx aes;
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  312  	int err = -EINVAL;
f6beaea304872b Antoine Tenart     2018-05-14  313  
f6beaea304872b Antoine Tenart     2018-05-14  314  	if (crypto_authenc_extractkeys(&keys, key, len) != 0)
f6beaea304872b Antoine Tenart     2018-05-14  315  		goto badkey;
f6beaea304872b Antoine Tenart     2018-05-14  316  
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  317  	if (ctx->mode == CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD) {
f26882a3475eb7 Pascal van Leeuwen 2019-07-30  318  		/* Minimum keysize is minimum AES key size + nonce size */
f26882a3475eb7 Pascal van Leeuwen 2019-07-30  319  		if (keys.enckeylen < (AES_MIN_KEY_SIZE +
f26882a3475eb7 Pascal van Leeuwen 2019-07-30  320  				      CTR_RFC3686_NONCE_SIZE))
f6beaea304872b Antoine Tenart     2018-05-14  321  			goto badkey;
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  322  		/* last 4 bytes of key are the nonce! */
f26882a3475eb7 Pascal van Leeuwen 2019-07-30  323  		ctx->nonce = *(u32 *)(keys.enckey + keys.enckeylen -
f26882a3475eb7 Pascal van Leeuwen 2019-07-30  324  				      CTR_RFC3686_NONCE_SIZE);
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  325  		/* exclude the nonce here */
f26882a3475eb7 Pascal van Leeuwen 2019-07-30  326  		keys.enckeylen -= CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD;
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  327  	}
f6beaea304872b Antoine Tenart     2018-05-14  328  
f6beaea304872b Antoine Tenart     2018-05-14  329  	/* Encryption key */
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  330  	switch (ctx->alg) {
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  331  	case SAFEXCEL_3DES:
21f5a15e0f26c7 Ard Biesheuvel     2019-08-15  332  		err = verify_aead_des3_key(ctfm, keys.enckey, keys.enckeylen);
77cdd4efe57134 Pascal van Leeuwen 2019-07-05  333  		if (unlikely(err))
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  334  			goto badkey_expflags;
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  335  		break;
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  336  	case SAFEXCEL_AES:
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  337  		err = aes_expandkey(&aes, keys.enckey, keys.enckeylen);
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  338  		if (unlikely(err))
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  339  			goto badkey;
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  340  		break;
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  341  	default:
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  342  		dev_err(priv->dev, "aead: unsupported cipher algorithm\n");
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  343  		goto badkey;
77cdd4efe57134 Pascal van Leeuwen 2019-07-05  344  	}
77cdd4efe57134 Pascal van Leeuwen 2019-07-05  345  
53c83e915ce8b2 Antoine Tenart     2018-06-28  346  	if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma &&
f6beaea304872b Antoine Tenart     2018-05-14  347  	    memcmp(ctx->key, keys.enckey, keys.enckeylen))
f6beaea304872b Antoine Tenart     2018-05-14  348  		ctx->base.needs_inv = true;
f6beaea304872b Antoine Tenart     2018-05-14  349  
f6beaea304872b Antoine Tenart     2018-05-14  350  	/* Auth key */
a7dea8c0ff9f25 Ofer Heifetz       2018-06-28  351  	switch (ctx->hash_alg) {
01ba061d0fd769 Antoine Tenart     2018-05-14  352  	case CONTEXT_CONTROL_CRYPTO_ALG_SHA1:
01ba061d0fd769 Antoine Tenart     2018-05-14  353  		if (safexcel_hmac_setkey("safexcel-sha1", keys.authkey,
01ba061d0fd769 Antoine Tenart     2018-05-14  354  					 keys.authkeylen, &istate, &ostate))
01ba061d0fd769 Antoine Tenart     2018-05-14  355  			goto badkey;
01ba061d0fd769 Antoine Tenart     2018-05-14  356  		break;
678b2878ac396f Antoine Tenart     2018-05-14  357  	case CONTEXT_CONTROL_CRYPTO_ALG_SHA224:
678b2878ac396f Antoine Tenart     2018-05-14  358  		if (safexcel_hmac_setkey("safexcel-sha224", keys.authkey,
678b2878ac396f Antoine Tenart     2018-05-14  359  					 keys.authkeylen, &istate, &ostate))
678b2878ac396f Antoine Tenart     2018-05-14  360  			goto badkey;
678b2878ac396f Antoine Tenart     2018-05-14  361  		break;
678b2878ac396f Antoine Tenart     2018-05-14  362  	case CONTEXT_CONTROL_CRYPTO_ALG_SHA256:
f6beaea304872b Antoine Tenart     2018-05-14  363  		if (safexcel_hmac_setkey("safexcel-sha256", keys.authkey,
f6beaea304872b Antoine Tenart     2018-05-14  364  					 keys.authkeylen, &istate, &ostate))
f6beaea304872b Antoine Tenart     2018-05-14  365  			goto badkey;
678b2878ac396f Antoine Tenart     2018-05-14  366  		break;
ea23cb533ce419 Antoine Tenart     2018-05-29  367  	case CONTEXT_CONTROL_CRYPTO_ALG_SHA384:
ea23cb533ce419 Antoine Tenart     2018-05-29  368  		if (safexcel_hmac_setkey("safexcel-sha384", keys.authkey,
ea23cb533ce419 Antoine Tenart     2018-05-29  369  					 keys.authkeylen, &istate, &ostate))
ea23cb533ce419 Antoine Tenart     2018-05-29  370  			goto badkey;
ea23cb533ce419 Antoine Tenart     2018-05-29  371  		break;
87eee125e7490c Antoine Tenart     2018-05-29  372  	case CONTEXT_CONTROL_CRYPTO_ALG_SHA512:
87eee125e7490c Antoine Tenart     2018-05-29  373  		if (safexcel_hmac_setkey("safexcel-sha512", keys.authkey,
87eee125e7490c Antoine Tenart     2018-05-29  374  					 keys.authkeylen, &istate, &ostate))
87eee125e7490c Antoine Tenart     2018-05-29  375  			goto badkey;
87eee125e7490c Antoine Tenart     2018-05-29  376  		break;
678b2878ac396f Antoine Tenart     2018-05-14  377  	default:
678b2878ac396f Antoine Tenart     2018-05-14  378  		dev_err(priv->dev, "aead: unsupported hash algorithm\n");
678b2878ac396f Antoine Tenart     2018-05-14  379  		goto badkey;
678b2878ac396f Antoine Tenart     2018-05-14  380  	}
f6beaea304872b Antoine Tenart     2018-05-14  381  
f6beaea304872b Antoine Tenart     2018-05-14  382  	crypto_aead_set_flags(ctfm, crypto_aead_get_flags(ctfm) &
f6beaea304872b Antoine Tenart     2018-05-14  383  				    CRYPTO_TFM_RES_MASK);
f6beaea304872b Antoine Tenart     2018-05-14  384  
53c83e915ce8b2 Antoine Tenart     2018-06-28  385  	if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma &&
f6beaea304872b Antoine Tenart     2018-05-14  386  	    (memcmp(ctx->ipad, istate.state, ctx->state_sz) ||
f6beaea304872b Antoine Tenart     2018-05-14  387  	     memcmp(ctx->opad, ostate.state, ctx->state_sz)))
f6beaea304872b Antoine Tenart     2018-05-14  388  		ctx->base.needs_inv = true;
f6beaea304872b Antoine Tenart     2018-05-14  389  
f6beaea304872b Antoine Tenart     2018-05-14  390  	/* Now copy the keys into the context */
f6beaea304872b Antoine Tenart     2018-05-14  391  	memcpy(ctx->key, keys.enckey, keys.enckeylen);
f6beaea304872b Antoine Tenart     2018-05-14  392  	ctx->key_len = keys.enckeylen;
f6beaea304872b Antoine Tenart     2018-05-14  393  
f6beaea304872b Antoine Tenart     2018-05-14  394  	memcpy(ctx->ipad, &istate.state, ctx->state_sz);
f6beaea304872b Antoine Tenart     2018-05-14  395  	memcpy(ctx->opad, &ostate.state, ctx->state_sz);
f6beaea304872b Antoine Tenart     2018-05-14  396  
f6beaea304872b Antoine Tenart     2018-05-14  397  	memzero_explicit(&keys, sizeof(keys));
f6beaea304872b Antoine Tenart     2018-05-14  398  	return 0;
f6beaea304872b Antoine Tenart     2018-05-14  399  
f6beaea304872b Antoine Tenart     2018-05-14  400  badkey:
f6beaea304872b Antoine Tenart     2018-05-14  401  	crypto_aead_set_flags(ctfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  402  badkey_expflags:
f6beaea304872b Antoine Tenart     2018-05-14  403  	memzero_explicit(&keys, sizeof(keys));
0e17e3621a28a6 Pascal van Leeuwen 2019-07-05  404  	return err;
f6beaea304872b Antoine Tenart     2018-05-14  405  }
f6beaea304872b Antoine Tenart     2018-05-14  406  

:::::: The code at line 303 was first introduced by commit
:::::: 77cdd4efe571345e9c116e65f64a616969e0bc35 crypto: inside-secure - add support for authenc(hmac(sha1),cbc(des3_ede))

:::::: TO: Pascal van Leeuwen <pascalvanl@gmail.com>
:::::: CC: Herbert Xu <herbert@gondor.apana.org.au>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108161803.77BJ9ggL-lkp%40intel.com.

--sdtB3X0nJg68CQEu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--sdtB3X0nJg68CQEu--
