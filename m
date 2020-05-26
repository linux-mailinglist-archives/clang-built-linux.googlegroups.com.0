Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHEKW33AKGQERIEDC4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8151E30EF
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 23:07:42 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id y6sf5242152ual.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 14:07:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590527261; cv=pass;
        d=google.com; s=arc-20160816;
        b=LYTzvjprS53TlFolTZ3AI80Mu5MEUOAN9F4ORPt4LInoqLOjCKPEv0LnpTUaSIDI2n
         7+dxHYOfigfZgyejF14u8KFqCWSx51KE9TD5ft/gxIwGvDnrnoFpgYizaanb/XI3Rj6X
         YLlqV8/P/gSy1iTeE4MfcFNxWRsRma7K9p0OiD/kVnHXZjLrZ8Fcp073uN7W6xGsLVBO
         TzrHyABDYlO+Jkhd91IT77KeRdCzZmDCogc5UYjj7mPPurkNp93eJqqfYdfH44AIZqBM
         sRf8zpJjkDJ5R0NX/mr9168JBKG9MpdS2OJVHpwWK0VUFECbmBFAZ1VxWqAlyyKAzCMx
         85kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dHeBiX7e4qTGCjyKx8EvJ70XcDOGqDzBoQtigna6f48=;
        b=KpP0gjeGsqBCEbQV0TzLkTz/eZdeQF1nP/ssBxFDYIPWEydi1b+B9pWl2t+YyEEUKv
         Flv8iNpxO/d5WeU0+2irUM8ejaInyvALF5hN/b7A/VEXsLXUL5vWFKb09AoA0Z502Xnz
         QhiFI0ar1Y1HzIeQETlu4R4JAs+dBDLpYJjZ1q0X0LmI1VTz0aYQnDOuJnkasPwyvFZ4
         kMENKYc72z09fkuDfr+aaGSi1Gf+eQDqO8oZjCd7Ht4lm98t1meWTOgIU+D0Zym/75j8
         oYdEQHIWp7atGRTTkQRi5aBNQQWPEPwEnPHbJn32VBd3YcryD526kB3EY7S1/N8F3o0u
         OxNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=clxV5cYn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=dHeBiX7e4qTGCjyKx8EvJ70XcDOGqDzBoQtigna6f48=;
        b=D9vIViFx8QlNnBufPufDd6HZAnIVaFJYNmHmGQo5FM9rD7YcnLBpbY7eZjpru/1L2Y
         Pi3xq4AQZrHZJukSSK2l0JArXmHJVHr9nnud/UVyMMZQnyB78/Pu/S5f9Kz0xdX3fySb
         2S+axSlgyX/YYzgvBOwz9RWLQsVb+OFjzYGWk1dZDjwXpsG2vuqmQnhrs8f6jHH8oNoT
         +yH7q4jtL1NQHWgDt65LyDlk00pEsQKNuRj2bXeb7lh1zwHaubad6E39Rxy+fP1oVUVS
         QgImpFWfEfysFBcVqOr2atDEZgpYuluQLX10hWW2uFak8g6h5DQ+GZZruoK+hn97FU23
         9llQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dHeBiX7e4qTGCjyKx8EvJ70XcDOGqDzBoQtigna6f48=;
        b=R6n1psAmye1IfpChPkRxiidkI+Lbz3lCh9s8qienYwPIgiQ8pKsGS4vReeqMqESdbR
         s0XkpuGU2Il1z+G7q1O2hNEl+zyukwBa4/7VJUCuki1307I5tqwsSD67dXn3ED+Liz9k
         mc0fiYzDZhgSm/reObuZc+taExklFvu9yM7PrLb3/KTRTkAOTB8zFxTwuKQkKmA0TQyt
         h2xeGMZAO8S4BmRcKtT31WzwmrCQ9Cp6GTFJVlhIFYiou/28vz7L2PkJhEhzGBy3ScSQ
         kmtkY25MFDbXu2JwYZWbQH+x8VsStVmrSDDWCwI464naT7Cxg81HHX6Dylp9c154bTSF
         ZnWA==
X-Gm-Message-State: AOAM533ai8sNgKCdBtIqSVrfXOXIVS/7/lh3QjyY0K0k1aAu70HP4iYe
	YZ2HORpCnfKTrjBdOJjb2Ic=
X-Google-Smtp-Source: ABdhPJz0YuJFo5ceD28iaRbucDTDz9+SoZQlCkxD1mVfcikaf0Z4DxEpxHwtywHzdlMt7eN+fz5jGA==
X-Received: by 2002:a1f:a6c8:: with SMTP id p191mr2542180vke.78.1590527260945;
        Tue, 26 May 2020 14:07:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c358:: with SMTP id l24ls554658vkk.9.gmail; Tue, 26 May
 2020 14:07:40 -0700 (PDT)
X-Received: by 2002:a1f:4dc2:: with SMTP id a185mr2796281vkb.9.1590527260542;
        Tue, 26 May 2020 14:07:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590527260; cv=none;
        d=google.com; s=arc-20160816;
        b=PPQhUxr+mUHjUs6LqbfhempeZ+nMOZQ2LQmQNu8Rjtni57q65lyWTN2YPvSQpBTS0I
         FnyGVqmua85rtUNUcchPjPbpPVbLJ2/bZiAzCzSjtWMNDGcLR0K/YmnPeKFu9bhuASAK
         guYqqEyga17BkZoyCIsv09qqSfn34sQcXK+ascBBQmg7HQtnabSgyb9aFEfy6WMBq3Nz
         qIgSE1zs3+9RZ4FPPkdiOuTANfM1p2K6Lx/Yh7K/Acha5Iwt/eJjTJ+Zpq77cIROLa95
         5bosx8j6vbNx6eRx3ciwrVRq037/xjjehdZv3BySVT/FrLCHnWrQnRKH3a3BsicUu1Uo
         UAHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KJcM4JliXYlF53dExdna/QGHPYl9e9igv0Wz/Y+5tes=;
        b=iflKZmSsJ40b3h38/AIZYg5uZrOJVtLtFCPl7Ij/mk+lN00aEaDey/39KCjcd/wIaK
         dsVb2gY1MW28yX4QGzu7eJSNHCftGzR7iDFEjAzIYOOjLnY80TYyZSXNCv4EwRVMUE3P
         hmmnHEeDJF7rBvDl9KNyVQVn1e2792s03PbmISTGtzJxGsXbHaxpFlWw2wpert01ISfB
         eArng8MMO/LPIBcoRWzc4rapntjVONCpon65tbfRdWOY9PGB6m6Y9FbRgfrJFuDV+DG0
         cNJ1thrcJd/nt79U7GW8tsbChf+vJg88T0uYjMRAq9qoIXxtFkFy9YvaXzaTbvvnYY9S
         N0jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=clxV5cYn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id m16si46446ual.1.2020.05.26.14.07.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 14:07:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id y198so10741211pfb.4
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 14:07:40 -0700 (PDT)
X-Received: by 2002:aa7:8dc7:: with SMTP id j7mr649706pfr.169.1590527259272;
 Tue, 26 May 2020 14:07:39 -0700 (PDT)
MIME-Version: 1.0
References: <202005270324.fspPrqPY%lkp@intel.com> <VI1PR04MB5696BCF57BEEB9E874F98443E0B00@VI1PR04MB5696.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5696BCF57BEEB9E874F98443E0B00@VI1PR04MB5696.eurprd04.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 May 2020 14:07:27 -0700
Message-ID: <CAKwvOd=9w8fMazrrjrttHSXgFBHA0vp5tN6qA+dX=D5rqCRN4A@mail.gmail.com>
Subject: Re: [EXT] [linux-next:master 6663/12912] drivers/net/dsa/sja1105/sja1105_static_config.c:463:8:
 warning: no previous prototype for function 'sja1105_vl_lookup_entry_packing'
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: kbuild test robot <lkp@intel.com>, "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=clxV5cYn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, May 26, 2020 at 12:40 PM Vladimir Oltean
<vladimir.oltean@nxp.com> wrote:
>
> What's wrong with a function that has no previous prototype?

It's possible that functions definitions don't match their
declarations, which would be an ABI mismatch.

> What 'fix' would be recommended?

Including the correct header that declares the function.

>
> ________________________________
> From: kbuild test robot <lkp@intel.com>
> Sent: Tuesday, May 26, 2020 10:38 PM
> To: Vladimir Oltean <vladimir.oltean@nxp.com>
> Cc: kbuild-all@lists.01.org <kbuild-all@lists.01.org>; clang-built-linux@=
googlegroups.com <clang-built-linux@googlegroups.com>
> Subject: [EXT] [linux-next:master 6663/12912] drivers/net/dsa/sja1105/sja=
1105_static_config.c:463:8: warning: no previous prototype for function 'sj=
a1105_vl_lookup_entry_packing'
>
> Caution: EXT Email
>
> Hi Vladimir,
>
> FYI, the error/warning still remains.
>
> tree:   https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fnext%2Flinux-next.gi=
t&amp;data=3D02%7C01%7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb10208d8=
01ac6954%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637261187457956492&am=
p;sdata=3DTIM2F4HXtmN2AXNm5xM5TjwaYNmdstN8orTe3V%2BwNOA%3D&amp;reserved=3D0=
 master
> head:   b0523c7b1c9d0edcd6c0fe6d2cb558a9ad5c60a8
> commit: 94f94d4acfb2a5e978f98d924be33c981e2f86c6 [6663/12912] net: dsa: s=
ja1105: add static tables for virtual links
> config: x86_64-randconfig-r006-20200526 (attached as .config)
> compiler: clang version 11.0.0 (https://eur01.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project&amp;data=3D02%7=
C01%7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb10208d801ac6954%7C686ea1=
d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637261187457966445&amp;sdata=3Dy8IInLZ=
xjz%2FF6cqTJIdeL0izRRnP2dnJP8yehJXzNmg%3D&amp;reserved=3D0 3393cc4cebf9969d=
b94dc424b7a2b6195589c33b)
> reproduce (this is a W=3D1 build):
>         wget https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%=
3A%2F%2Fraw.githubusercontent.com%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmak=
e.cross&amp;data=3D02%7C01%7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb1=
0208d801ac6954%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637261187457966=
445&amp;sdata=3DTw6wTZsqKIRtdGuIjiiHiKKlzWFIlWJhsGyb9XSvECU%3D&amp;reserved=
=3D0 -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 94f94d4acfb2a5e978f98d924be33c981e2f86c6
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dx86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
> drivers/net/dsa/sja1105/sja1105_static_config.c:105:8: warning: no previo=
us prototype for function 'sja1105pqrs_avb_params_entry_packing' [-Wmissing=
-prototypes]
> size_t sja1105pqrs_avb_params_entry_packing(void *buf, void *entry_ptr,
> ^
> drivers/net/dsa/sja1105/sja1105_static_config.c:105:1: note: declare 'sta=
tic' if the function is not intended to be used outside of this translation=
 unit
> size_t sja1105pqrs_avb_params_entry_packing(void *buf, void *entry_ptr,
> ^
> static
> drivers/net/dsa/sja1105/sja1105_static_config.c:199:8: warning: no previo=
us prototype for function 'sja1105_l2_forwarding_entry_packing' [-Wmissing-=
prototypes]
> size_t sja1105_l2_forwarding_entry_packing(void *buf, void *entry_ptr,
> ^
> drivers/net/dsa/sja1105/sja1105_static_config.c:199:1: note: declare 'sta=
tic' if the function is not intended to be used outside of this translation=
 unit
> size_t sja1105_l2_forwarding_entry_packing(void *buf, void *entry_ptr,
> ^
> static
> drivers/net/dsa/sja1105/sja1105_static_config.c:254:8: warning: no previo=
us prototype for function 'sja1105et_l2_lookup_entry_packing' [-Wmissing-pr=
ototypes]
> size_t sja1105et_l2_lookup_entry_packing(void *buf, void *entry_ptr,
> ^
> drivers/net/dsa/sja1105/sja1105_static_config.c:254:1: note: declare 'sta=
tic' if the function is not intended to be used outside of this translation=
 unit
> size_t sja1105et_l2_lookup_entry_packing(void *buf, void *entry_ptr,
> ^
> static
> drivers/net/dsa/sja1105/sja1105_static_config.c:268:8: warning: no previo=
us prototype for function 'sja1105pqrs_l2_lookup_entry_packing' [-Wmissing-=
prototypes]
> size_t sja1105pqrs_l2_lookup_entry_packing(void *buf, void *entry_ptr,
> ^
> drivers/net/dsa/sja1105/sja1105_static_config.c:268:1: note: declare 'sta=
tic' if the function is not intended to be used outside of this translation=
 unit
> size_t sja1105pqrs_l2_lookup_entry_packing(void *buf, void *entry_ptr,
> ^
> static
> drivers/net/dsa/sja1105/sja1105_static_config.c:344:8: warning: no previo=
us prototype for function 'sja1105pqrs_mac_config_entry_packing' [-Wmissing=
-prototypes]
> size_t sja1105pqrs_mac_config_entry_packing(void *buf, void *entry_ptr,
> ^
> drivers/net/dsa/sja1105/sja1105_static_config.c:344:1: note: declare 'sta=
tic' if the function is not intended to be used outside of this translation=
 unit
> size_t sja1105pqrs_mac_config_entry_packing(void *buf, void *entry_ptr,
> ^
> static
> >> drivers/net/dsa/sja1105/sja1105_static_config.c:463:8: warning: no pre=
vious prototype for function 'sja1105_vl_lookup_entry_packing' [-Wmissing-p=
rototypes]
> size_t sja1105_vl_lookup_entry_packing(void *buf, void *entry_ptr,
> ^
> drivers/net/dsa/sja1105/sja1105_static_config.c:463:1: note: declare 'sta=
tic' if the function is not intended to be used outside of this translation=
 unit
> size_t sja1105_vl_lookup_entry_packing(void *buf, void *entry_ptr,
> ^
> static
> drivers/net/dsa/sja1105/sja1105_static_config.c:513:8: warning: no previo=
us prototype for function 'sja1105_vlan_lookup_entry_packing' [-Wmissing-pr=
ototypes]
> size_t sja1105_vlan_lookup_entry_packing(void *buf, void *entry_ptr,
> ^
> drivers/net/dsa/sja1105/sja1105_static_config.c:513:1: note: declare 'sta=
tic' if the function is not intended to be used outside of this translation=
 unit
> size_t sja1105_vlan_lookup_entry_packing(void *buf, void *entry_ptr,
> ^
> static
> 7 warnings generated.
>
> vim +/sja1105_vl_lookup_entry_packing +463 drivers/net/dsa/sja1105/sja110=
5_static_config.c
>
>    462
>  > 463  size_t sja1105_vl_lookup_entry_packing(void *buf, void *entry_ptr=
,
>    464                                         enum packing_op op)
>    465  {
>    466          struct sja1105_vl_lookup_entry *entry =3D entry_ptr;
>    467          const size_t size =3D SJA1105_SIZE_VL_LOOKUP_ENTRY;
>    468
>    469          if (entry->format =3D=3D SJA1105_VL_FORMAT_PSFP) {
>    470                  /* Interpreting vllupformat as 0 */
>    471                  sja1105_packing(buf, &entry->destports,
>    472                                  95, 91, size, op);
>    473                  sja1105_packing(buf, &entry->iscritical,
>    474                                  90, 90, size, op);
>    475                  sja1105_packing(buf, &entry->macaddr,
>    476                                  89, 42, size, op);
>    477                  sja1105_packing(buf, &entry->vlanid,
>    478                                  41, 30, size, op);
>    479                  sja1105_packing(buf, &entry->port,
>    480                                  29, 27, size, op);
>    481                  sja1105_packing(buf, &entry->vlanprior,
>    482                                  26, 24, size, op);
>    483          } else {
>    484                  /* Interpreting vllupformat as 1 */
>    485                  sja1105_packing(buf, &entry->egrmirr,
>    486                                  95, 91, size, op);
>    487                  sja1105_packing(buf, &entry->ingrmirr,
>    488                                  90, 90, size, op);
>    489                  sja1105_packing(buf, &entry->vlid,
>    490                                  57, 42, size, op);
>    491                  sja1105_packing(buf, &entry->port,
>    492                                  29, 27, size, op);
>    493          }
>    494          return size;
>    495  }
>    496
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists=
.01.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;data=3D02%7C01%=
7Cvladimir.oltean%40nxp.com%7C08e6290ccbe844ccb10208d801ac6954%7C686ea1d3bc=
2b4c6fa92cd99c5c301635%7C0%7C0%7C637261187457966445&amp;sdata=3DJUxpDGnGAvz=
noiXrgdumiSSY8FHKcZV6q1LaZHN6HMY%3D&amp;reserved=3D0
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/VI1PR04MB5696BCF57BEEB9E874F98443E0B00%40VI1PR04MB5696.=
eurprd04.prod.outlook.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3D9w8fMazrrjrttHSXgFBHA0vp5tN6qA%2BdX%3DD5rqCRN4A=
%40mail.gmail.com.
