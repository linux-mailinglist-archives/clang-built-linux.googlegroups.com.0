Return-Path: <clang-built-linux+bncBDB3VRMVXIPRBGWE3GAQMGQE3CQFR5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E10F6323F24
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 15:26:34 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id r79sf825774lff.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 06:26:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614176794; cv=pass;
        d=google.com; s=arc-20160816;
        b=ePAw1BFdzQliiUVhp8GYWR6Fk9Cj9LK92kHzlK4+UCxGvyubKugY3WDJnH5ZsO2c/8
         ZoUTvEOdmaSceAm1bDhHWUjpa7s4bnDAFDhp4acmw/fK0wwufiUltVtWYzf956SGJIbw
         rPQItA3v9Up3sucM2nbH3huMrboMZY3LVhWeJmSusUHU7lBt7JkbtTU53Ly1P9+gmBB0
         kC5yKE9vOtV9x0Jx5b3kFUjlIyAMbot9HYoPYO1VZ2gPV6rmw0qAIIZfvGxZuqxes69x
         YZRfvWxNDLVjVL75eGRJo9i6Fz/Qbe7/hzKJTE/Zg4jX4vJ19Ho8s7KxcDsUiJ7kSIs8
         CtLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=siDmAXd5921v/bF9NJzVlDcoRs/h3Vte5qzNmzg3maw=;
        b=W4FIvq/DBo6dOvx5wJ6vYsrzURjUJTvvBszwPQ0SYYkRs+GIyDERpARjWmp5E3AsZN
         M5/gCUtCO4RqhA6zXQFk/j1Qqb3UOhGkPFVYcqoIKD3ne0wkNxXTRQxRINGCoEYZmBkx
         lzaRqEASDDos7G+E0tai3xmnf80hvoqv6+B9iz8Y3fcthlfNKvWEC6MJYC9DzQ/pjmKO
         XNsnh3QSH6w7yaWrtTq9unDHx/CtDrTG2CrgUp6KO+2DXcpYA5GKVBUyAtHEHgm7O8Ax
         NEAs29kbJRaDQ1jPdCBcL4Yk5dUqQ3cBHDmTGxIHWO7U8BSS9+vnX8LhmdgbZIDH+Qr8
         VjvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=sjRBZRcr;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=siDmAXd5921v/bF9NJzVlDcoRs/h3Vte5qzNmzg3maw=;
        b=OvOgEeZ05sZ/2bfrD2scUumF6P8rwVV7WDImy9zW0DpWai4MxL1HvHCPlPSqB+kTd9
         1NUHh6K0C6/CgIciDqPEyA2bjG/Sw91aaTtHxKKuMLGQpk1I+xgYRDYC5t3LFY0x2m+D
         Y3+dky56xjBbzuNRsqadNVtRnIT6HTCKqM+JKgQBF1wEs9A37mEc+V3zDixJa2WPYo/c
         xaNUUONWUpVUnl3VJ4oEiJcnm70x3bWccD6C8gPYZ1khOIuTy0Uh+dtPL/zVElvGLgDW
         /KXOeMKaNULmXDsbAaxDgSOAr+10ZHNLFdWLumae9YRU09SR3WbarheHkG940PPFWwdD
         tbFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=siDmAXd5921v/bF9NJzVlDcoRs/h3Vte5qzNmzg3maw=;
        b=SgHwesg36lD0KubhI0gA3AiqnSuR1fMISqAsKr3Ez4Xeyq4BaAau6ge6fNxBkc73HF
         3VN7VoQ+qzAZEYtxBrtGqj+wgF4EQkuC5fXWNMS70h4uLEbHLjwmcwqBhp6gUFxtGrsy
         iyUQexQi4SFea2nI3wmATFoKloKPobtcf6UFd8CsvPbl4ZkFXQE0DYlBF5FmHYv8ERBW
         6osimgqFqL94FkgtaAfhOvxpVfraH4ov0NHt8VaqXR9LdVTWYZ3AB1bXBiEy/bUcHUnK
         WSb/yr0WuLYOG9j9qJg9Oko2pQcgGzgq6APbmkOgqKKjIfu2E6xjMtfFhToe8MN1/1jD
         nh5g==
X-Gm-Message-State: AOAM533sZ6pIipTmuEqp6zMborzvlh6FWdIiUCOsCp8g3wkfaEgi3Bc4
	KSYllOgOCWwlx3Bhw6pb31s=
X-Google-Smtp-Source: ABdhPJwIfEdOOm5BDCsxWEeDNRmRrq4a8V7p0mHEyfOCVEeTN/h/KYOPjFREqEGedLcnPOb6pGLHJQ==
X-Received: by 2002:a05:651c:2050:: with SMTP id t16mr20639103ljo.109.1614176794291;
        Wed, 24 Feb 2021 06:26:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls1809112lfu.3.gmail; Wed,
 24 Feb 2021 06:26:33 -0800 (PST)
X-Received: by 2002:a19:ae07:: with SMTP id f7mr4311399lfc.551.1614176793230;
        Wed, 24 Feb 2021 06:26:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614176793; cv=none;
        d=google.com; s=arc-20160816;
        b=xuRLrVpV/Kmf6+mvF6TsAcQyTAZbFvWwIkC2518DIaa/ppxNce+EssM2k2O44RqLK1
         fsJJCIWGzgsGBY6ylCwzOCP7GRk6WQgMwHicFFv0v+XgoyBqXjPqDPhYSKUo1ReH67yw
         QlKNgDIkIqnoog4egYd6qj7yY4csUCctDSu5PZ+NuT6snqQcis81Qa8xdlsnUn294z77
         lHaSOpuspeToeqzk5TVe5h9M/THMPx7y3o9sK/6jc/dQbTkdaUxRAcrY3g5I+le9TxGB
         Bmen8xGZCMMVCEsIdTu+x/xUV2x5+G6/eviDksY8q3xZ9Q/MCyqCPUsf4FfkZzJViTD3
         UXBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=om0fLeF6bkj4TyJ3fOl5UDg8q46YFr3uFsP1xLcnam8=;
        b=ZgSbxn1knneBrlDr09Y/tv/5qkNL3uKBqG9VG/uZbe8XJcLPj1W8PB+fiE3+n+lp1A
         +nv1YRn50m5xm5g0kpRclG9SXRuEVLEtPw0b7ZUOHebCzorgp2VP79dSR2Z+5M/HckG1
         BXvvZRoc/y7RPq2M8PeZDIU+bQCdPinVRim68jAcikxq/oNCcZI73WPe7PPjYIGkLJ6j
         PbIiVhWyob2YoydaU/zpA1vwCkmYB49lrVZ+X7ALMOaizvAtRR6E21qOdJfc3pomq/SD
         mCJgiJgXMVnapHWBkTXcy5bVm4jbnUch8PonoLkX5VkW7evKhWQTkk1qRJpiDkVsiFs+
         Xq1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=sjRBZRcr;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id m17si100539lfg.0.2021.02.24.06.26.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 06:26:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 72093B1C1;
	Wed, 24 Feb 2021 14:26:32 +0000 (UTC)
Subject: Re: WARNING: modpost: vmlinux.o(.text+0x1a8edb8): Section mismatch in
 reference from the function stop_machine() to the function
 .init.text:intel_rng_hw_init()
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Borislav Petkov <bp@suse.de>
References: <202102242224.Cpiog92Y-lkp@intel.com>
From: =?UTF-8?Q?=27J=C3=BCrgen_Gro=C3=9F=27_via_Clang_Built_Linux?= <clang-built-linux@googlegroups.com>
Message-ID: <83ab58cb-581f-135f-21fd-05c15860cafa@suse.com>
Date: Wed, 24 Feb 2021 15:26:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <202102242224.Cpiog92Y-lkp@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="o4AQc0bWS16ptCsJL341HX8Jz9ya4jPyM"
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=sjRBZRcr;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=suse.com
X-Original-From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Reply-To: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
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

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--o4AQc0bWS16ptCsJL341HX8Jz9ya4jPyM
Content-Type: multipart/mixed; boundary="9mTrBTzVRj6sZcgoXUDcFJvZWDmKNZttF";
 protected-headers="v1"
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Borislav Petkov <bp@suse.de>
Message-ID: <83ab58cb-581f-135f-21fd-05c15860cafa@suse.com>
Subject: Re: WARNING: modpost: vmlinux.o(.text+0x1a8edb8): Section mismatch in
 reference from the function stop_machine() to the function
 .init.text:intel_rng_hw_init()
References: <202102242224.Cpiog92Y-lkp@intel.com>
In-Reply-To: <202102242224.Cpiog92Y-lkp@intel.com>

--9mTrBTzVRj6sZcgoXUDcFJvZWDmKNZttF
Content-Type: multipart/mixed;
 boundary="------------2F03C5F925C72BEC3DE6C806"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2F03C5F925C72BEC3DE6C806
Content-Type: text/plain; charset="UTF-8"; format=flowed

On 24.02.21 15:20, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   c03c21ba6f4e95e406a1a7b4c34ef334b977c194
> commit: ab234a260b1f625b26cbefa93ca365b0ae66df33 x86/pv: Rework arch_local_irq_restore() to not use popf
> date:   2 weeks ago
> config: x86_64-randconfig-a005-20210223 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f14a14dd2564703db02f80c00db8ae492b594f77)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ab234a260b1f625b26cbefa93ca365b0ae66df33
>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>          git fetch --no-tags linus master
>          git checkout ab234a260b1f625b26cbefa93ca365b0ae66df33
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
>>> WARNING: modpost: vmlinux.o(.text+0x1a8edb8): Section mismatch in reference from the function stop_machine() to the function .init.text:intel_rng_hw_init()
> The function stop_machine() references
> the function __init intel_rng_hw_init().
> This is often because stop_machine lacks a __init
> annotation or the annotation of intel_rng_hw_init is wrong.

I'd be very interested to know how the identified patch would be able to
have this effect.


Juergen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/83ab58cb-581f-135f-21fd-05c15860cafa%40suse.com.

--------------2F03C5F925C72BEC3DE6C806
Content-Type: application/pgp-keys;
 name="OpenPGP_0xB0DE9DD628BF132F.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="OpenPGP_0xB0DE9DD628BF132F.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFOMcBYBCACgGjqjoGvbEouQZw/ToiBg9W98AlM2QHV+iNHsEs7kxWhKMjrioyspZKOBy=
cWx
w3ie3j9uvg9EOB3aN4xiTv4qbnGiTr3oJhkB1gsb6ToJQZ8uxGq2kaV2KL9650I1SJvedYm8O=
f8Z
d621lSmoKOwlNClALZNew72NjJLEzTalU1OdT7/i1TXkH09XSSI8mEQ/ouNcMvIJNwQpd369y=
9bf
IhWUiVXEK7MlRgUG6MvIj6Y3Am/BBLUVbDa4+gmzDC9ezlZkTZG2t14zWPvxXP3FAp2pkW0xq=
G7/
377qptDmrk42GlSKN4z76ELnLxussxc7I2hx18NUcbP8+uty4bMxABEBAAHNHEp1ZXJnZW4gR=
3Jv
c3MgPGpnQHBmdXBmLm5ldD7CwHkEEwECACMFAlOMcBYCGwMHCwkIBwMCAQYVCAIJCgsEFgIDA=
QIe
AQIXgAAKCRCw3p3WKL8TL0KdB/93FcIZ3GCNwFU0u3EjNbNjmXBKDY4FUGNQH2lvWAUy+dnyT=
hpw
dtF/jQ6j9RwE8VP0+NXcYpGJDWlNb9/JmYqLiX2Q3TyevpB0CA3dbBQp0OW0fgCetToGIQrg0=
MbD
1C/sEOv8Mr4NAfbauXjZlvTj30H2jO0u+6WGM6nHwbh2l5O8ZiHkH32iaSTfN7Eu5RnNVUJbv=
oPH
Z8SlM4KWm8rG+lIkGurqqu5gu8q8ZMKdsdGC4bBxdQKDKHEFExLJK/nRPFmAuGlId1E3fe10v=
5QL
+qHI3EIPtyfE7i9Hz6rVwi7lWKgh7pe0ZvatAudZ+JNIlBKptb64FaiIOAWDCx1SzR9KdWVyZ=
2Vu
IEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+wsB5BBMBAgAjBQJTjHCvAhsDBwsJCAcDAgEGFQgCC=
QoL
BBYCAwECHgECF4AACgkQsN6d1ii/Ey/HmQf/RtI7kv5A2PS4RF7HoZhPVPogNVbC4YA6lW7Dr=
Wf0
teC0RR3MzXfy6pJ+7KLgkqMlrAbN/8Dvjoz78X+5vhH/rDLa9BuZQlhFmvcGtCF8eR0T1v0nC=
/nu
AFVGy+67q2DH8As3KPu0344TBDpAvr2uYM4tSqxK4DURx5INz4ZZ0WNFHcqsfvlGJALDeE0Lh=
ITT
d9jLzdDad1pQSToCnLl6SBJZjDOX9QQcyUigZFtCXFst4dlsvddrxyqT1f17+2cFSdu7+ynLm=
XBK
7abQ3rwJY8SbRO2iRulogc5vr/RLMMlscDAiDkaFQWLoqHHOdfO9rURssHNN8WkMnQfvUewRz=
80h
SnVlcmdlbiBHcm9zcyA8amdyb3NzQG5vdmVsbC5jb20+wsB5BBMBAgAjBQJTjHDXAhsDBwsJC=
AcD
AgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey8PUQf/ehmgCI9jB9hlgexLvgOtf7PJn=
FOX
gMLdBQgBlVPO3/D9R8LtF9DBAFPNhlrsfIG/SqICoRCqUcJ96Pn3P7UUinFG/I0ECGF4EvTE1=
jnD
kfJZr6jrbjgyoZHiw/4BNwSTL9rWASyLgqlA8u1mf+c2yUwcGhgkRAd1gOwungxcwzwqgljf0=
N51
N5JfVRHRtyfwq/ge+YEkDGcTU6Y0sPOuj4Dyfm8fJzdfHNQsWq3PnczLVELStJNdapwPOoE+l=
otu
fe3AM2vAEYJ9rTz3Cki4JFUsgLkHFqGZarrPGi1eyQcXeluldO3m91NK/1xMI3/+8jbO0tsn1=
tqS
EUGIJi7ox80eSnVlcmdlbiBHcm9zcyA8amdyb3NzQHN1c2UuZGU+wsB5BBMBAgAjBQJTjHDrA=
hsD
BwsJCAcDAgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey+LhQf9GL45eU5vOowA2u5N3=
g3O
ZUEBmDHVVbqMtzwlmNC4k9Kx39r5s2vcFl4tXqW7g9/ViXYuiDXb0RfUpZiIUW89siKrkzmQ5=
dM7
wRqzgJpJwK8Bn2MIxAKArekWpiCKvBOB/Cc+3EXE78XdlxLyOi/NrmSGRIov0karw2RzMNOu5=
D+j
LRZQd1Sv27AR+IP3I8U4aqnhLpwhK7MEy9oCILlgZ1QZe49kpcumcZKORmzBTNh30FVKK1Evm=
V2x
AKDoaEOgQB4iFQLhJCdP1I5aSgM5IVFdn7v5YgEYuJYx37IoN1EblHI//x/e2AaIHpzK5h88N=
Eaw
QsaNRpNSrcfbFmAg987ATQRTjHAWAQgAyzH6AOODMBjgfWE9VeCgsrwH3exNAU32gLq2xvjpW=
nHI
s98ndPUDpnoxWQugJ6MpMncr0xSwFmHEgnSEjK/PAjppgmyc57BwKII3sV4on+gDVFJR6Y8ZR=
wgn
BC5mVM6JjQ5xDk8WRXljExRfUX9pNhdE5eBOZJrDRoLUmmjDtKzWaDhIg/+1Hzz93X4fCQkNV=
bVF
LELU9bMaLPBG/x5q4iYZ2k2ex6d47YE1ZFdMm6YBYMOljGkZKwYde5ldM9mo45mmwe0icXKLk=
pEd
IXKTZeKDO+Hdv1aqFuAcccTg9RXDQjmwhC3yEmrmcfl0+rPghO0Iv3OOImwTEe4co3c1mwARA=
QAB
wsBfBBgBAgAJBQJTjHAWAhsMAAoJELDendYovxMvQ/gH/1ha96vm4P/L+bQpJwrZ/dneZcmEw=
Tbe
8YFsw2V/Buv6Z4Mysln3nQK5ZadD534CF7TDVft7fC4tU4PONxF5D+/tvgkPfDAfF77zy2AH1=
vJz
Q1fOU8lYFpZXTXIHb+559UqvIB8AdgR3SAJGHHt4RKA0F7f5ipYBBrC6cyXJyyoprT10EMvU8=
VGi
wXvTyJz3fjoYsdFzpWPlJEBRMedCot60g5dmbdrZ5DWClAr0yau47zpWj3enf1tLWaqcsuylW=
svi
uGjKGw7KHQd3bxALOknAp4dN3QwBYCKuZ7AddY9yjynVaD5X7nF9nO5BjR/i1DG86lem3iBDX=
zXs
ZDn8R38=3D
=3D2wuH
-----END PGP PUBLIC KEY BLOCK-----

--------------2F03C5F925C72BEC3DE6C806--

--9mTrBTzVRj6sZcgoXUDcFJvZWDmKNZttF--

--o4AQc0bWS16ptCsJL341HX8Jz9ya4jPyM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAmA2YhcFAwAAAAAACgkQsN6d1ii/Ey+z
Swf/deLO2/Ov0JVIBFj1KZy15rzJEudxvqfYCESR39ExVdSf66S5gkX1mBd8MMAVLZf6Q0cOMH0m
nURn4bKbJFYv5otZsVeWqEJeNlFAJZPTLk79RhdN/zNX0OAdbS60aiIMlJCNMF4pqPhYoMmd30Mb
roclsOwJ7W2vIgTcpOJIHQB3T+Am2v7DFCk7y/C+IlCbP1HY62gSqxPpNUjFKBAmt+VayRTVWnhq
azKQ86yCPKO1QTAccoI2RSqPCz2Jy1G9Mht9qWoBnXBO7cEqT6IkrBUfzQzxRxH77g3v0nt6Wes0
cmGscPBEOKaGb+LH9FCWFJbRTABjzJnRGA8k1Ey00w==
=slCR
-----END PGP SIGNATURE-----

--o4AQc0bWS16ptCsJL341HX8Jz9ya4jPyM--
