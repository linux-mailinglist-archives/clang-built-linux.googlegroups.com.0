Return-Path: <clang-built-linux+bncBDBI3QXVT4LRB2UCYL2QKGQERT3IM2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A6E1C48A5
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 22:56:10 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id b7sf12791edf.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 13:56:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588625770; cv=pass;
        d=google.com; s=arc-20160816;
        b=CY30aZMGxKM64fk+SJ6pkgOCOdY5PxexrQzzWSfjmnS3Jflun3Rhq0WZX4aJZWNWHZ
         bALSMdC0q9rbRBzVweDlZ2iUKdEGsYcH71WIE00nHMlDwlSaM4IeRbuxcRkUsPbxBihZ
         OBiQN1fDNnmgghfTip4OLhRS6dB/js8uFDvfZknzGGLA0JQJSWE+Bwxi42hFwfkjD6nz
         rYBN0jOVj/R8Y0Kg3Vubs8zgsC8TTSYb1xdIM9VbNSCuEgg46nwnlsZTl8XZBY3OIGd4
         DvVU14l9DXp1Ey4UYEjTGzGjvRkzy3Q/u38UnTFdc+OBfKSyy9xYqQYdrxE1+Z1aXkN3
         uU6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=BvVeYWszxVjuOOdy6xCpmovegX1pmjzMFgqrYk1q4Hw=;
        b=IUMs0wd+NVjOvcI8YjkMwlFj0GsKJikKArLXAOigkIH75e6QFPngZB3GVgASQPE/Ns
         MS2kAedbI4xIep08kcM3oVsGb2tHg6kfdvk6KCqz5dOLOdrnXjlUuJINut/a6WuZ27CL
         x8s7//kIoibo5a0X6eIVOW/AhSpeqH/KIpZFdHb9VomJIPZuzdjDXYfv6XtyGAyiJZtm
         lG6ny+1Qh7iKRNnOWUDBMix8BUm/PbBk3ZMbXKeUAWsSMaXK/xot+khn8KL3GdNvNEqd
         Fpi+8OXtXSsCnnuvL8oByDLa/UnonyJ9OsFmtwvlRSdW+dBPySRJi6U/SsAtrOd0eWi4
         jv1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ktgC8a5K;
       spf=pass (google.com: domain of kirjanov@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=kirjanov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BvVeYWszxVjuOOdy6xCpmovegX1pmjzMFgqrYk1q4Hw=;
        b=EjcOXFnXcmUzdnDeR5RWAK+Eh/gqiRgphh/jf8Idu2dup7Vc1TXVkIgvExXHi1V5gH
         kBD+GN9Nlcef9f5pOqY15xvPZEvPHpVGawB9jl77wlwHarNijsNL4XbnKnS1S4okHSp/
         /8hsj3uaVff8uT1eRL6yGnNvm01QaPfarP+tOatWGzVgqruuHg/oAtN9MGGSdGmwJZLU
         MmGkY4ViH2iRZ/RnYbzL093kTOM7PmyAW9lhuv0pRXqVuTO8kX6PXlZ+qgiZCbPz6ddR
         Yy8hyhrIqPFJzFzpW1+QjRAzs0V9keV9oAjEnKvT/Zp4SpgpmbLToTnxEU4cfY9LUnZv
         igGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BvVeYWszxVjuOOdy6xCpmovegX1pmjzMFgqrYk1q4Hw=;
        b=dPEgitoxlzrzraCSA54hpqzW9ANgTJRoA/lOhNYGNSL+y1jUZx5NVSjY+gh36W5TW0
         g96n/qGKJGrMQXMu0o0A3gj6RaSwkjg0iVAnHXoJPB6bwYvfk27pNXKHhhOuBZRkojY9
         e0q3bVjZ8f4Iy132a4NgEJbX8r6elFSSslzM0f/nWmcVxEhgpuBdv/d/Ygg9gYw7WJXP
         KOmXrSYg9+ms7TDqpqzTLdi5siME3njspt1rOOIKCUtt3CWJlzFlBhaEqwijMZps0zDY
         u4OmqXSGkxlrlf8Bb3i0wXqftqFAZfrj3yQTtyD5Knw2tsMUAr6KSPS9NLBF3VUXLVjC
         849Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BvVeYWszxVjuOOdy6xCpmovegX1pmjzMFgqrYk1q4Hw=;
        b=tkUCa5uFGODhHeCtqYYKh7rkDb8tfVBg4cfDQi/HWWa9Vlm12fXmaEquKgaRwXKOdE
         uabPEOs14K3u8FKe9QwsNjwDBW7hu9rG/nOxAoZASiRgLefOulV+TsWoeISrR3iAq786
         dnR4IsZcBj5oZAtgETpDwqx81BzQWKJoPjYYBzN7mG2L5Si9lGpn8JhKmz/hdWDfbE5p
         6xEwjLCtafVmRPH+Uj7Rm2+iiiwenZYpdnCkQfsiZBUmsyx0tO9YNYH0ZcStHeSEC89h
         Vd3UThAYvwMO761L2d7BTz+yKxBcFXMcasKjB8e/LzV/oTmAtuEwA8oTY4hsi3/mHCpR
         1dxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZTrM3a5h5Win6rdXzeTMpH4EWYtxlAbP6kHO4ZlBEmykBHz4hA
	v5zdfEwNcwKwcjIvy9Zx6k8=
X-Google-Smtp-Source: APiQypL35CFVFyCkdf4L/l4Rmw+2DS7tb3J099b1CsWM8e87QgQbZBohfSQRH2344Shy31jkOVeqEg==
X-Received: by 2002:a17:906:f106:: with SMTP id gv6mr16979129ejb.271.1588625770423;
        Mon, 04 May 2020 13:56:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:dd88:: with SMTP id g8ls112978edv.1.gmail; Mon, 04 May
 2020 13:56:09 -0700 (PDT)
X-Received: by 2002:a05:6402:1d09:: with SMTP id dg9mr16658530edb.118.1588625769760;
        Mon, 04 May 2020 13:56:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588625769; cv=none;
        d=google.com; s=arc-20160816;
        b=lZERpCOZ/pBKVBdUC+NviiBLqIi8vqyMoN9AsrwpZqoRAvLl362cC+3UCxgK8RWBv6
         +086kBu/BlWhUxCIBJ39C4wN666hk5yJ0A2GdWoVTDLP12N6rXtiNDH6HqV+dl7KMT6L
         ONix/3Lj951E6ACg9D5MViFsu6HGJmXvdw/y0D9mKDDg2kqtxasjjELtkLg0FgWTLvLE
         RcdFgJjF53kJC1eh5PNcH0M9aEIqXJSP5ah8PzTaLXLQ+87Bj0I/GdUPKa4Y7tcwn7L9
         Rl55rJWGduSKvtujuQKIhmZQOM2mIFhdCmtzlOC4H7VOKKMnzMEdmT4n4rxzAJV3QC+F
         Bzbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature;
        bh=jj+yHjTENM+Peo9Jdrx8f5kNADZJYV1yu3LQ77husCg=;
        b=0iKd8FXZ3djutfjqYix8JH4GJUyfi6wl0aWRWifH+dLBif0iH1EMosHJaWK+izL3qQ
         4UCBDNPkR7nI6ZkEY2V1Cs6b1pEbAut/J5WpWwXW1J1o8ddGPLS6kZxVNryJxPbCE2+U
         IvW/1IjsL545uKc2tXyh0CaMmqdVTqxHEVugXupZNrwhSgrGSwJg9bIKVZbzg2iJxnp3
         cG2KxOoiQfe2i+mKjWnhc9USsC++cSngflqdlYKlVPes0O330OqWMCJSenptv+9/Q862
         IVDbB/kecyMlGZ4xayYfnczxJoZGYsZIwDZnvDMiJhLvCPpO260H5co7GkqBxUWHdy8q
         9oiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ktgC8a5K;
       spf=pass (google.com: domain of kirjanov@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=kirjanov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id a3si658985edn.1.2020.05.04.13.56.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 13:56:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of kirjanov@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id e2so15141018eje.13
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 13:56:09 -0700 (PDT)
X-Received: by 2002:a17:906:1393:: with SMTP id f19mr72502ejc.26.1588625769413;
 Mon, 04 May 2020 13:56:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:a310:0:0:0:0:0 with HTTP; Mon, 4 May 2020 13:56:08 -0700 (PDT)
In-Reply-To: <202005050430.0uOwRsZs%lkp@intel.com>
References: <1588327938-2608-1-git-send-email-kda@linux-powerpc.org> <202005050430.0uOwRsZs%lkp@intel.com>
From: Denis Kirjanov <kirjanov@gmail.com>
Date: Mon, 4 May 2020 23:56:08 +0300
Message-ID: <CAHj3AVnj6DqFKkraLHeq2QG86mE8MEJfv=4gYyQ16-=E7gHCKQ@mail.gmail.com>
Subject: Re: [PATCH net-next v5 1/2] xen networking: add basic XDP support for xen-netfront
To: kbuild test robot <lkp@intel.com>
Cc: Denis Kirjanov <kda@linux-powerpc.org>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "jgross@suse.com" <jgross@suse.com>, 
	"wei.liu@kernel.org" <wei.liu@kernel.org>, "paul@xen.org" <paul@xen.org>, 
	"ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>, 
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000aac0df05a4d8c2b9"
X-Original-Sender: kirjanov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ktgC8a5K;       spf=pass
 (google.com: domain of kirjanov@gmail.com designates 2a00:1450:4864:20::642
 as permitted sender) smtp.mailfrom=kirjanov@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000aac0df05a4d8c2b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Monday, May 4, 2020, kbuild test robot <lkp@intel.com> wrote:

> Hi Denis,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on net-next/master]
> [also build test ERROR on xen-tip/linux-next linus/master v5.7-rc4
> next-20200501]
> [if your patch is applied to the wrong git tree, please drop us a note to
> help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y
> the
> base tree in git format-patch, please see https://stackoverflow.com/a/
> 37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Denis-Kirjanov/
> xen-networking-add-basic-XDP-support-for-xen-netfront/20200501-193532
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.gi=
t
> 37ecb5b8b8cd3156e739fd1c56a8e3842b72ebad
> config: x86_64-randconfig-d003-20200502 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project
> ff6a0b6a8ee74693e9711973028a8a327adf9cd5)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/
> sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross
> ARCH=3Dx86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> ld.lld: error: undefined symbol: page_pool_create
>    >>> referenced by xen-netfront.c:2008 (drivers/net/xen-netfront.c:2008=
)
>    >>> net/xen-netfront.o:(netback_changed) in archive drivers/built-in.a
> --
> >> ld.lld: error: undefined symbol: page_pool_alloc_pages
>    >>> referenced by xen-netfront.c:281 (drivers/net/xen-netfront.c:281)
>    >>> net/xen-netfront.o:(xennet_alloc_rx_buffers) in archive
> drivers/built-in.a


Looks like we have to enable page pool API by default

>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>


--=20
Regards / Mit besten Gr=C3=BC=C3=9Fen,
Denis

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAHj3AVnj6DqFKkraLHeq2QG86mE8MEJfv%3D4gYyQ16-%3DE7gHCKQ%4=
0mail.gmail.com.

--000000000000aac0df05a4d8c2b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Monday, May 4, 2020, kbuild test robot &lt;<a href=3D"mailto:lkp=
@intel.com">lkp@intel.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
Hi Denis,<br>
<br>
I love your patch! Yet something to improve:<br>
<br>
[auto build test ERROR on net-next/master]<br>
[also build test ERROR on xen-tip/linux-next linus/master v5.7-rc4 next-202=
00501]<br>
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp<br>
improve the system. BTW, we also suggest to use &#39;--base&#39; option to =
specify the<br>
base tree in git format-patch, please see <a href=3D"https://stackoverflow.=
com/a/37406982" target=3D"_blank">https://stackoverflow.com/a/<wbr>37406982=
</a>]<br>
<br>
url:=C2=A0 =C2=A0 <a href=3D"https://github.com/0day-ci/linux/commits/Denis=
-Kirjanov/xen-networking-add-basic-XDP-support-for-xen-netfront/20200501-19=
3532" target=3D"_blank">https://github.com/0day-ci/<wbr>linux/commits/Denis=
-Kirjanov/<wbr>xen-networking-add-basic-XDP-<wbr>support-for-xen-netfront/<=
wbr>20200501-193532</a><br>
base:=C2=A0 =C2=A0<a href=3D"https://git.kernel.org/pub/scm/linux/kernel/gi=
t/davem/net-next.git" target=3D"_blank">https://git.kernel.org/pub/<wbr>scm=
/linux/kernel/git/davem/<wbr>net-next.git</a> 37ecb5b8b8cd3156e739fd1c56a8e=
3<wbr>842b72ebad<br>
config: x86_64-randconfig-d003-<wbr>20200502 (attached as .config)<br>
compiler: clang version 11.0.0 (<a href=3D"https://github.com/llvm/llvm-pro=
ject" target=3D"_blank">https://github.com/llvm/llvm-<wbr>project</a> ff6a0=
b6a8ee74693e9711973028a8a<wbr>327adf9cd5)<br>
reproduce:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 wget <a href=3D"https://raw.githubusercontent.c=
om/intel/lkp-tests/master/sbin/make.cross" target=3D"_blank">https://raw.gi=
thubusercontent.<wbr>com/intel/lkp-tests/master/<wbr>sbin/make.cross</a> -O=
 ~/bin/make.cross<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 chmod +x ~/bin/make.cross<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # install x86_64 cross compiling tool for clang=
 build<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # apt-get install binutils-x86-64-linux-gnu<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # save the attached .config to linux build tree=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 COMPILER_INSTALL_PATH=3D$HOME/<wbr>0day COMPILE=
R=3Dclang make.cross ARCH=3Dx86_64 <br>
<br>
If you fix the issue, kindly add following tag as appropriate<br>
Reported-by: kbuild test robot &lt;<a href=3D"mailto:lkp@intel.com">lkp@int=
el.com</a>&gt;<br>
<br>
All errors (new ones prefixed by &gt;&gt;):<br>
<br>
&gt;&gt; ld.lld: error: undefined symbol: page_pool_create<br>
=C2=A0 =C2=A0&gt;&gt;&gt; referenced by xen-netfront.c:2008 (drivers/net/xe=
n-netfront.c:<wbr>2008)<br>
=C2=A0 =C2=A0&gt;&gt;&gt; net/xen-netfront.o:(netback_<wbr>changed) in arch=
ive drivers/built-in.a<br>
--<br>
&gt;&gt; ld.lld: error: undefined symbol: page_pool_alloc_pages<br>
=C2=A0 =C2=A0&gt;&gt;&gt; referenced by xen-netfront.c:281 (drivers/net/xen=
-netfront.c:<wbr>281)<br>
=C2=A0 =C2=A0&gt;&gt;&gt; net/xen-netfront.o:(xennet_<wbr>alloc_rx_buffers)=
 in archive drivers/built-in.a</blockquote><div><br></div><div>Looks like w=
e have to enable page pool API by default=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">
<br>
---<br>
0-DAY CI Kernel Test Service, Intel Corporation<br>
<a href=3D"https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org" ta=
rget=3D"_blank">https://lists.01.org/<wbr>hyperkitty/list/kbuild-all@<wbr>l=
ists.01.org</a><br>
</blockquote><br><br>-- <br>Regards / Mit besten Gr=C3=BC=C3=9Fen,<br>Denis=
<br><br>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAHj3AVnj6DqFKkraLHeq2QG86mE8MEJfv%3D4gYyQ16-%=
3DE7gHCKQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAHj3AVnj6DqFKkraLHeq2QG86mE8ME=
Jfv%3D4gYyQ16-%3DE7gHCKQ%40mail.gmail.com</a>.<br />

--000000000000aac0df05a4d8c2b9--
