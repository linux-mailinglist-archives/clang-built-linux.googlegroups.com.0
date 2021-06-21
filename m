Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBN7CYKDAMGQEFNB5GOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0493AEC7B
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 17:33:12 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id f9-20020a056a0022c9b029030058c72fafsf4547132pfj.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 08:33:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624289591; cv=pass;
        d=google.com; s=arc-20160816;
        b=wKr/nq0Ml9VcBd2Ckq2z037R7gvtK6LdAjJeyh0wS+DNJmCb03yLEcraxogKuVV5mt
         UXx+GGnfH8UbnPY1c2ZGuLUFDwPWpnkgRtrvk+s/RvCnifzwTTtdJlfwmvRPBg9P651R
         Uu8wmoc+T3Aizse0xt+WdL0HoiTYvRxrsJpnW0fnVYZf7TcEV7uUzxia1rxyiZbUgHlt
         6UNdk21EPSKk3pA4V3Qhd7uwP5HO0DKuoQ/nUFZiA6sirW/zfNcg2U3Hbp4pALTGQv2V
         fZPDFjqhONexiNcEcJiS/+HgcJCzaKo7lW4AV7S/e6OD+oIYeNJUWAwy4ccN9gmsQbLH
         +EJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=L0haXKDcaAv/d4S6TUc1OaV/iNn9i+66KIEX1dosyDw=;
        b=xXHRsru/pcWGUNpEOgBNmNz+rBabfHtb+yH+jN7cQcR8HnF+ejb5FI1TyRmk3+2iQC
         TZ5JaZLN8aNIXNmWg652B2EA170O95VeFZM3WLI72DJlVURCKg3swQVGVzIrGh7dc93J
         nFuy+gP9kvKBr2HanQDL9GAI/U2KKGESug3Bw2ZlEWdS1sCd28oiPPWTNFu/7Lu4M/DV
         2sK/9M7c3wtzkgBpStYKEQ77bbFpKVnge+8vnOT8Zro1XSN3QdLdfIwxFW9krA5pCWaA
         Lz2/w6VJ7I3lP+Hv/MugKkUDdZ/aim1Zhx6fmKk7r+9OAdTE1KEYi2M+s9rwU0a8Jhkr
         wtPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L0haXKDcaAv/d4S6TUc1OaV/iNn9i+66KIEX1dosyDw=;
        b=PdJDZJlr3+yO8M/4asLdrmKVyxYQjzOSOdI7yWR16khQmSIGEIz4X57tFZxbjEnGUu
         gQHhR7cwvyETdSko/3TUdrw8+dmHUi+YGVUshpatCotpqSDHpRIFrYZOaXmil+Xk0uJ+
         LlymZEASr0mNe5Hl6kid1fU/WW05SgIWWLdA2og6Hx5jkE/QnVZ90V0vrnpdYBlURF5A
         rqkzrP55cb9ohSFREi0jv6ZSHG+qTG27AMgAZIxMepfFzs7ZitU16r7E/qiDBMTAtEa4
         cvy1FSe8sp1jgAGHaC6/nvO4JIkFNp4rruf4voCZn5tU7x8n6bsd6IhLwpjoy+8P+sjW
         2Y+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L0haXKDcaAv/d4S6TUc1OaV/iNn9i+66KIEX1dosyDw=;
        b=Go7r9YFa9hB/CDnBfR4ctwvxKq6jqlf1XdQWP3hXVbF+e3LxaL9VaT81WDUs34tfXG
         5Z60CyQHI7VJ+NvZ4VUyRggonz9P3JQNu3ZwaYxYTVaT+lEEZRo4NkOq5LqaDcxP5eeb
         tbiWedqDbvpC8p4n8HUxw+0dqMt+PETWIlhcNMfdOJcAkQOPuJDRI0bzbcah55I48hps
         t+zdDvhx5SDt00m7wIjctJCsSPdyQ8W/v0oiC7DlD9PfxB1URKiWJCQ3ymRIW811bZWl
         FDrbFP8lSkcnBiquMJxVFMHM3mapKn1OyrIHHloD74CN3WbnkCAzkgjy29+IQn9UNzf/
         Vccg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RrX9Wol0CPbCT7IycofTV9ln0q7tEmlJM3mVCOPI9ZkT411oR
	nM6ZadQnXyoD5DYz09e7/I4=
X-Google-Smtp-Source: ABdhPJx/rcBAA2ubjSirV1enbZi1VyNgc346tbttuucoC9In6Ro9Ql2362l339p0ZE86OohKbAbEQA==
X-Received: by 2002:a63:f13:: with SMTP id e19mr23853081pgl.112.1624289591662;
        Mon, 21 Jun 2021 08:33:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:51cc:: with SMTP id i12ls8571794pgq.4.gmail; Mon, 21 Jun
 2021 08:33:11 -0700 (PDT)
X-Received: by 2002:a63:234f:: with SMTP id u15mr24642197pgm.257.1624289590952;
        Mon, 21 Jun 2021 08:33:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624289590; cv=none;
        d=google.com; s=arc-20160816;
        b=kzJr/6HDdnXxrJAOC7nhidDd36ovLW2Xg4rTfSJNAtqlRIqX217589oM/7wj0O7/TC
         LFZg5Tt8Dk+bjQ2Ti3qaQoI/nyrxktiA/4k8cw7wJJA1v/sp6SE+EFUGc6GuevAOvYW9
         FzquX40Wz8seMnrD0vyS5iHMMxAf6UcBhwzYUbHpYlAVRmRp+DervnVv047W0FEWjra2
         KjkcbUaj0IBY4h0Td+QMNR5ibA1ynBPNCbpkgBAusWKJwE7faX57/jR3z9j3I/nl6FEn
         vR3v0m8atEtQ4rKAy1MkepOvCFqN4P2b06QpycHPpM3iS/coUeNCyAG7Q/xEi+byuoW9
         LIVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr;
        bh=LZ4q+KtI+4Dvi3W27qDO19nmyGjQyBVHmRjgMYsTg5g=;
        b=WJDFO7I0Z3hJWqxnxWxHM7Ezxz/BbCRk8aXg02YnPfkez/hzNFx0PD2tdzroEmO2X8
         pw+FCTTPUdGWpyCa2MbuPPecwf2AYDIfufpzi87TvBv1w0ygFGFyrwPnJ40AEZFf5AgV
         Zm1z4ImFJPRgiUD6aydCVBFj2DNwK35ggxd99HPGLb0Lr2srEXhHUKr13ECbkQJ8a8oB
         9x5CbGS7UrjpcuRxfSoldkIxQdgPW3L/h8CDd9ExCoSD8vkb5yDzdDK5VTs43qb6YqrB
         DbVTlFo9NRHks9/MRECk0QBq83I0TTDDOK0wjwUs851kkJDCqB1q/eufmJoPFzTBlQyx
         PyPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id cq4si759765pjb.3.2021.06.21.08.33.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 08:33:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: cW+UEvHHuXFcKJGgSdpq72hTX0EH6ZaF3n06ickbkE98M5R8aoUXbhJxWv4qDhA4LvaqaFWHk2
 3nMndVONRdLg==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="186562042"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="186562042"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2021 08:33:10 -0700
IronPort-SDR: lx78yng4sZaP0TAdbPDHw+N5MZ5R86JbypeloJWmZWhrXkNFZ/CsY/q85xer9uwWyZNBNFfHuj
 emzrXVGu8t0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="641355782"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 21 Jun 2021 08:33:07 -0700
Date: Mon, 21 Jun 2021 23:25:39 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: =?utf-8?Q?J=C4=99drzej?= Jagielski <jedrzej.jagielski@intel.com>,
	intel-wired-lan@lists.osuosl.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Add
 trace while removing device
Message-ID: <20210621152539.GL158568@pl-dbox>
References: <1624263000-8709-1-git-send-email-jedrzej.jagielski@intel.com>
 <202106211913.DugmZi6d-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202106211913.DugmZi6d-lkp@intel.com>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.136 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Jun 21, 2021 at 07:28:07PM +0800, kernel test robot wrote:
> Hi "J=C4=99drzej,
>=20
> Thank you for the patch! Yet something to improve:
>=20
> [auto build test ERROR on net-next/master]
>=20
> url:    https://github.com/0day-ci/linux/commits/J-drzej-Jagielski/iavf-A=
dd-trace-while-removing-device/20210621-161419
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.gi=
t adc2e56ebe6377f5c032d96aee0feac30a640453
> config: x86_64-randconfig-a012-20210621 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e1ad=
f90826a57b674eee79b071fb46c1f5683cd0)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/57afb781e6da71b3eb1c32b=
7485adf57de789a1b
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review J-drzej-Jagielski/iavf-Add-trace=
-while-removing-device/20210621-161419
>         git checkout 57afb781e6da71b3eb1c32b7485adf57de789a1b
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
Sorry for the broken report, kindly ignore this, we will fix
this asap.

>=20
>    arch/x86/Makefile:148: CONFIG_X86_X32 enabled but no binutils support
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a01=
2-20210621/clang-13/57afb781e6da71b3eb1c32b7485adf57de789a1b/lib/modules/5.=
13.0-rc6+/kernel/crypto/cmac.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a01=
2-20210621/clang-13/57afb781e6da71b3eb1c32b7485adf57de789a1b/lib/modules/5.=
13.0-rc6+/kernel/crypto/md5.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a01=
2-20210621/clang-13/57afb781e6da71b3eb1c32b7485adf57de789a1b/lib/modules/5.=
13.0-rc6+/kernel/crypto/sha512_generic.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a01=
2-20210621/clang-13/57afb781e6da71b3eb1c32b7485adf57de789a1b/lib/modules/5.=
13.0-rc6+/kernel/drivers/net/net_failover.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a01=
2-20210621/clang-13/57afb781e6da71b3eb1c32b7485adf57de789a1b/lib/modules/5.=
13.0-rc6+/kernel/drivers/net/virtio_net.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a01=
2-20210621/clang-13/57afb781e6da71b3eb1c32b7485adf57de789a1b/lib/modules/5.=
13.0-rc6+/kernel/fs/cifs/cifs.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a01=
2-20210621/clang-13/57afb781e6da71b3eb1c32b7485adf57de789a1b/lib/modules/5.=
13.0-rc6+/kernel/fs/nfs/nfsv4.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a01=
2-20210621/clang-13/57afb781e6da71b3eb1c32b7485adf57de789a1b/lib/modules/5.=
13.0-rc6+/kernel/lib/crypto/libarc4.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a01=
2-20210621/clang-13/57afb781e6da71b3eb1c32b7485adf57de789a1b/lib/modules/5.=
13.0-rc6+/kernel/net/core/failover.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a01=
2-20210621/clang-13/57afb781e6da71b3eb1c32b7485adf57de789a1b/lib/modules/5.=
13.0-rc6+/kernel/net/dns_resolver/dns_resolver.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a01=
2-20210621/clang-13/57afb781e6da71b3eb1c32b7485adf57de789a1b/lib/modules/5.=
13.0-rc6+/kernel/net/sunrpc/auth_gss/auth_rpcgss.ko', needed by '__modinst'=
.
>    make[2]: Target '__modinst' not remade because of errors.
>    make[1]: *** [Makefile:1773: modules_install] Error 2
>    make: *** [Makefile:215: __sub-make] Error 2
>    make: Target 'modules_install' not remade because of errors.
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210621152539.GL158568%40pl-dbox.
