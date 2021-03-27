Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBQ7K7OBAMGQENTJDV6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2535534B590
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 10:05:09 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id y2sf7900677ioa.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 02:05:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616835907; cv=pass;
        d=google.com; s=arc-20160816;
        b=vZT3wq/cRQBBb53VLhuQ+J6S9S0A1leF2O1aO20gdmZUdw8JlSH8PGz5jh59cEzkIA
         fs+2EoX9s983Suen70fl2NQGZciYxbaQnb0wwCmo8PUTlRy+PdsOKXoNAZm5Cw6AjFQ1
         RFktnaDubdT6/XX34DUdi6aXezlMkp9s6o+tgi3VZ2vAyWeI1fg4n89kOKmGmWmVBUDA
         GhKgZjiGZI2DObU0wZIpcGD/8zrHN3UgZUE2rfdHKtGgVggn/QeXZcjlPUwWEIcaqZIk
         u2ts7bjgesNAtF+fVjaRJfzv7Jl4z3bElDBxcXerKSO0/8trFLT34rhU27gbu6+CGWPi
         B/3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=D+KDYhSB0NLsXFrUoHt2nNAsScgxchPwVqGvvK+HMDw=;
        b=lrcYa91pQyXytqqTaIFlLIAB/RdVJqmjOAB6ha8xyna8pVKfFYsIQr7awlWB4UbXo5
         POzLEMPr0V2bcHu//PeFriMq7Dw0fqrDAkt1Ji6IkVbRRgJvZ1BxQGVafx87XeMfpCN7
         JRc5nln1dwgH/87eRxtGW1NKiOmD814Esz0BNcbQTPbeJjlnsbh/vU5z9THSO86CHfiu
         1+azh2mOmTJ7GBa9gz6wYcNyWIFg506OwjNMehcWgdGzHp7CQG5tl//OKS5VNuEPaCcV
         FzehiIXzzPyC+bG3wdt+sizEfdcxZWOBUdD4fZ6Eao6hx4DAfHYHEerNww/Tvk3Oib94
         3A0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R2CxRgLC;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D+KDYhSB0NLsXFrUoHt2nNAsScgxchPwVqGvvK+HMDw=;
        b=kTInoYNlZSK2vSmpxEXsoRx8KDa0eY42XS2vIGSCy5MQnw+UlnIsqjFv+WXnBaREnP
         7eCA8eveA9cO4GLxiPn8Tp1+fjBQD5RoGKt5teI6yCN5cUPsKvdKMtLrK4QL3LF5DqZx
         cEJCn+9MnxRS5klg9HakW/DrtAlW8Fz0Z1EuMMne7x1gfM/CoTpu5Y4QyGuU18vEh1hx
         KbNdyebU2u/v6+1vEFkR8QzYUS53BcooaC0jW3mGGiRxYDflGQ4aRDfqy7DopYoETRQK
         BEBeXt2Q2hkk0PUzS4ygKmH09XUD9JysZTLIXoottGhcfBfQk5zj3hLIp6K4cTnFA88o
         FXaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D+KDYhSB0NLsXFrUoHt2nNAsScgxchPwVqGvvK+HMDw=;
        b=nCpMbOSacmjnJ64t1dZHOTVrQS98e1JwBWBcTNYnnAiWDaMFGt23z77cozQknu+Hr3
         sv16xnuVlaPFdb6ji3OZL3vsreK41UB7Hur7LdBxJWHg4WqBblccp1nJgJzJlAbbvHz7
         ed99+ipmubSxOP1dtLfD2rIteoZX9F9xpkwWA0LVyathNzui/50VZziBs9j35S2/EZQn
         KriT7pnptVZmB9JbLjaLxUTdR6s5p2yQYEIK0cMZQuS6ymiSK8O9x9opeDPntCXa/C8j
         bqRfNi7OD1Qoyg5QR2g6eAdhvYIkWlOl5kDq31iVKNX2j94zlL+x2a14e5vSH7e6YJMD
         4N7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D+KDYhSB0NLsXFrUoHt2nNAsScgxchPwVqGvvK+HMDw=;
        b=pys9Ee2w7CADNo7sOTvQsrC8GlNtlV6ZQkxOe+taohrdjSYtdPrYtl8aDVfxr0dD7r
         0+WnHvosKiMwH3iVNyyhOIkQJQ+7XuzlE2VsIscp0TlIml8hwxQ03TNzr9vCHPqaJmMK
         G3WrLFb5vArdtzFtsLV0m370CD2uf++KysQIwDk/1ZUnfLzCT9ic2hoX5YY7cdsjIs+s
         fVzEayXBjuhSZR/igmODyG6QopkWqz3b0Sacp5cfbWVFzUdWmiIfI/AxgQxpofSbR8v5
         dCNvb4RmTU/KAuNRKt0QUrWRxR5vKgtveagqUcL83Sq5/DxOBkNomSiNt2Zc8SjMh3K0
         o4Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336Alm+rVgg4UmdzfVc2S8JOpfnEcaKdGB3OlEaQ1qn+KNYCdvS
	2eDHUcLmhhvwQsZAqsoaFvo=
X-Google-Smtp-Source: ABdhPJwk4oVRl/1Huf4ruOpeOxtMIgPefhUlei9MhMFBqPrbzEj43J9qzRj2jyp6WUv9klheRWP6jg==
X-Received: by 2002:a92:c842:: with SMTP id b2mr13646022ilq.179.1616835907644;
        Sat, 27 Mar 2021 02:05:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1a08:: with SMTP id s8ls2515738ild.1.gmail; Sat, 27
 Mar 2021 02:05:07 -0700 (PDT)
X-Received: by 2002:a92:6b10:: with SMTP id g16mr14096941ilc.26.1616835907312;
        Sat, 27 Mar 2021 02:05:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616835907; cv=none;
        d=google.com; s=arc-20160816;
        b=VrOVWaMPmW42iBWLVfT1rturmfGEQFF+FR4h4Vr3TQRJmaX4jnpyUCUt6UkQk2nDje
         kyK20T0+TpVMALyGArzt2aKD0bybXIPZwftGmAbMCtV7KbR8nKViUrW22hH8j1l4ioYo
         +3Tf0LIYjMeiKZPWNBqcyWf32lcxdQphjjUlfmB7TISghXm9aACkz39pzRNZvGTl5put
         QEZw/rmoBjadlxVcKj2MgNSPA+JadTGxRA8Bo2lU1jlzpBGgD+CiGOwaFGm5JfSzPzYC
         S9uaXtEW7vmAVRH0KmweRvWoDrozCVNzcNyxqB46p0n9i6a9G2K4qMoOzYCxQgzwJTqF
         SA/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature;
        bh=1cKB+bnLruYZBm8XVcWAJBGa88Zc1vKcSLOdr1OOxK4=;
        b=mjR2LZZpEMjpbUilUlzf1BgGwXOBsGQdH5k9Qos2oYTdL0N1YioZj5FvWmNeVFbGI8
         Qcm0bfuorEKg2wmI55luiA0xrccla2XtYzolSd4FNZK6Z8vyaslFioewHvsD3dcVGtE6
         lcFt+TkJ9/bS3mrnYB2BWo86L80V/nAAGZstCVoJGTBg6BltGveppzc4W9e3mLoe6ix2
         MT2/YNpPCu8uXO5NIuy2eBZMW1EZQWbpVNc2ddCZ1pBRgscbgy6mxqBACm4LQFAFudNV
         zVPyhVq3kTGx0oidLHavpkiymEV9wPOVn2n21FY/WV3hg25RvPNrRxuuXZ8yWU3Q5CrE
         bG6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R2CxRgLC;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id y4si841596iln.3.2021.03.27.02.05.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Mar 2021 02:05:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id h20so2069295plr.4
        for <clang-built-linux@googlegroups.com>; Sat, 27 Mar 2021 02:05:07 -0700 (PDT)
X-Received: by 2002:a17:90a:e454:: with SMTP id jp20mr18302046pjb.129.1616835906660;
 Sat, 27 Mar 2021 02:05:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:7184:0:0:0:0 with HTTP; Sat, 27 Mar 2021 02:05:06
 -0700 (PDT)
In-Reply-To: <202103271654.KmOXtG69-lkp@intel.com>
References: <1616827256-51840-7-git-send-email-tanxiaofei@huawei.com> <202103271654.KmOXtG69-lkp@intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 27 Mar 2021 11:05:06 +0200
Message-ID: <CAHp75Vfqfwsekb3vaeoXzEGPpjEfTVq2JGqczy3yP40EVvrSsQ@mail.gmail.com>
Subject: Re: [PATCH 06/15] ACPI: acpi_lpss: fix some coding style issues
To: kernel test robot <lkp@intel.com>
Cc: Xiaofei Tan <tanxiaofei@huawei.com>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>, 
	"lenb@kernel.org" <lenb@kernel.org>, "rui.zhang@intel.com" <rui.zhang@intel.com>, 
	"bhelgaas@google.com" <bhelgaas@google.com>, "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"linuxarm@openeuler.org" <linuxarm@openeuler.org>
Content-Type: multipart/alternative; boundary="000000000000e06b3f05be80f120"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=R2CxRgLC;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

--000000000000e06b3f05be80f120
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Saturday, March 27, 2021, kernel test robot <lkp@intel.com> wrote:

> Hi Xiaofei,
>
> Thank you for the patch! Perhaps something to improve:



Yeah, they even didn=E2=80=99t bother to compile this... I have NAKed entir=
e
series. Who knows what else is there?


>
> [auto build test WARNING on pm/linux-next]
> [also build test WARNING on v5.12-rc4 next-20210326]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Xiaofei-Tan/
> acpi-fix-some-coding-style-issues/20210327-144714
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/
> linux-pm.git linux-next
> config: x86_64-randconfig-a005-20210326 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project
> d50fe9f0d6b9ee61df8830a67ea0a33c27a637e7)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/
> sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/
> 31b45f08e2017005a1da942954093a6f09be7269
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Xiaofei-Tan/acpi-fix-some-
> coding-style-issues/20210327-144714
>         git checkout 31b45f08e2017005a1da942954093a6f09be7269
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross
> ARCH=3Dx86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/acpi/acpi_lpss.c:190:26: warning: incompatible pointer to
> integer conversion passing 'void *' to parameter of type 'unsigned int'
> [-Wint-conversion]
>                    uid =3D kstrtol(uid_str, NULL, 10);
>                                           ^~~~
>    include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
>    #define NULL ((void *)0)
>                 ^~~~~~~~~~~
>    include/linux/kernel.h:246:68: note: passing argument to parameter
> 'base' here
>    static inline int __must_check kstrtol(const char *s, unsigned int
> base, long *res)
>                                                                       ^
> >> drivers/acpi/acpi_lpss.c:190:32: warning: incompatible integer to
> pointer conversion passing 'int' to parameter of type 'long *'
> [-Wint-conversion]
>                    uid =3D kstrtol(uid_str, NULL, 10);
>                                                 ^~
>    include/linux/kernel.h:246:80: note: passing argument to parameter
> 'res' here
>    static inline int __must_check kstrtol(const char *s, unsigned int
> base, long *res)
>
>         ^
>    2 warnings generated.
>
>
> vim +190 drivers/acpi/acpi_lpss.c
>
>    179
>    180  static void byt_i2c_setup(struct lpss_private_data *pdata)
>    181  {
>    182          const char *uid_str =3D acpi_device_uid(pdata->adev);
>    183          acpi_handle handle =3D pdata->adev->handle;
>    184          unsigned long long shared_host =3D 0;
>    185          acpi_status status;
>    186          long uid =3D 0;
>    187
>    188          /* Expected to always be true, but better safe then sorry
> */
>    189          if (uid_str)
>  > 190                  uid =3D kstrtol(uid_str, NULL, 10);
>    191
>    192          /* Detect I2C bus shared with PUNIT and ignore its d3
> status */
>    193          status =3D acpi_evaluate_integer(handle, "_SEM", NULL,
> &shared_host);
>    194          if (ACPI_SUCCESS(status) && shared_host && uid)
>    195                  pmc_atom_d3_mask &=3D ~(BIT_LPSS2_F1_I2C1 << (uid=
 -
> 1));
>    196
>    197          lpss_deassert_reset(pdata);
>    198
>    199          if (readl(pdata->mmio_base + pdata->dev_desc->prv_offset)=
)
>    200                  pdata->fixed_clk_rate =3D 133000000;
>    201
>    202          writel(0, pdata->mmio_base + LPSS_I2C_ENABLE);
>    203  }
>    204
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>


--=20
With Best Regards,
Andy Shevchenko

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAHp75Vfqfwsekb3vaeoXzEGPpjEfTVq2JGqczy3yP40EVvrSsQ%40mai=
l.gmail.com.

--000000000000e06b3f05be80f120
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Saturday, March 27, 2021, kernel test robot &lt;<a href=3D"mailt=
o:lkp@intel.com">lkp@intel.com</a>&gt; wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">Hi Xiaofei,<br>
<br>
Thank you for the patch! Perhaps something to improve:</blockquote><div><br=
></div><div><br></div><div>Yeah, they even didn=E2=80=99t bother to compile=
 this... I have NAKed entire series. Who knows what else is there?</div><di=
v>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
<br>
[auto build test WARNING on pm/linux-next]<br>
[also build test WARNING on v5.12-rc4 next-20210326]<br>
[If your patch is applied to the wrong git tree, kindly drop us a note.<br>
And when submitting patch, we suggest to use &#39;--base&#39; as documented=
 in<br>
<a href=3D"https://git-scm.com/docs/git-format-patch" target=3D"_blank">htt=
ps://git-scm.com/docs/git-<wbr>format-patch</a>]<br>
<br>
url:=C2=A0 =C2=A0 <a href=3D"https://github.com/0day-ci/linux/commits/Xiaof=
ei-Tan/acpi-fix-some-coding-style-issues/20210327-144714" target=3D"_blank"=
>https://github.com/0day-ci/<wbr>linux/commits/Xiaofei-Tan/<wbr>acpi-fix-so=
me-coding-style-<wbr>issues/20210327-144714</a><br>
base:=C2=A0 =C2=A0<a href=3D"https://git.kernel.org/pub/scm/linux/kernel/gi=
t/rafael/linux-pm.git" target=3D"_blank">https://git.kernel.org/pub/<wbr>sc=
m/linux/kernel/git/rafael/<wbr>linux-pm.git</a> linux-next<br>
config: x86_64-randconfig-a005-<wbr>20210326 (attached as .config)<br>
compiler: clang version 13.0.0 (<a href=3D"https://github.com/llvm/llvm-pro=
ject" target=3D"_blank">https://github.com/llvm/llvm-<wbr>project</a> d50fe=
9f0d6b9ee61df8830a67ea0a3<wbr>3c27a637e7)<br>
reproduce (this is a W=3D1 build):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 wget <a href=3D"https://raw.githubusercontent.c=
om/intel/lkp-tests/master/sbin/make.cross" target=3D"_blank">https://raw.gi=
thubusercontent.<wbr>com/intel/lkp-tests/master/<wbr>sbin/make.cross</a> -O=
 ~/bin/make.cross<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 chmod +x ~/bin/make.cross<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # install x86_64 cross compiling tool for clang=
 build<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # apt-get install binutils-x86-64-linux-gnu<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # <a href=3D"https://github.com/0day-ci/linux/c=
ommit/31b45f08e2017005a1da942954093a6f09be7269" target=3D"_blank">https://g=
ithub.com/0day-ci/<wbr>linux/commit/<wbr>31b45f08e2017005a1da942954093a<wbr=
>6f09be7269</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git remote add linux-review <a href=3D"https://=
github.com/0day-ci/linux" target=3D"_blank">https://github.com/0day-ci/<wbr=
>linux</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git fetch --no-tags linux-review Xiaofei-Tan/ac=
pi-fix-some-<wbr>coding-style-issues/20210327-<wbr>144714<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git checkout 31b45f08e2017005a1da942954093a<wbr=
>6f09be7269<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # save the attached .config to linux build tree=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 COMPILER_INSTALL_PATH=3D$HOME/<wbr>0day COMPILE=
R=3Dclang make.cross ARCH=3Dx86_64 <br>
<br>
If you fix the issue, kindly add following tag as appropriate<br>
Reported-by: kernel test robot &lt;<a href=3D"mailto:lkp@intel.com">lkp@int=
el.com</a>&gt;<br>
<br>
All warnings (new ones prefixed by &gt;&gt;):<br>
<br>
&gt;&gt; drivers/acpi/acpi_lpss.c:190:<wbr>26: warning: incompatible pointe=
r to integer conversion passing &#39;void *&#39; to parameter of type &#39;=
unsigned int&#39; [-Wint-conversion]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uid =
=3D kstrtol(uid_str, NULL, 10);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^=
~~~<br>
=C2=A0 =C2=A0include/linux/stddef.h:8:14: note: expanded from macro &#39;NU=
LL&#39;<br>
=C2=A0 =C2=A0#define NULL ((void *)0)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~<br>
=C2=A0 =C2=A0include/linux/kernel.h:246:68: note: passing argument to param=
eter &#39;base&#39; here<br>
=C2=A0 =C2=A0static inline int __must_check kstrtol(const char *s, unsigned=
 int base, long *res)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>
&gt;&gt; drivers/acpi/acpi_lpss.c:190:<wbr>32: warning: incompatible intege=
r to pointer conversion passing &#39;int&#39; to parameter of type &#39;lon=
g *&#39; [-Wint-conversion]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uid =
=3D kstrtol(uid_str, NULL, 10);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ^~<br>
=C2=A0 =C2=A0include/linux/kernel.h:246:80: note: passing argument to param=
eter &#39;res&#39; here<br>
=C2=A0 =C2=A0static inline int __must_check kstrtol(const char *s, unsigned=
 int base, long *res)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>
=C2=A0 =C2=A02 warnings generated.<br>
<br>
<br>
vim +190 drivers/acpi/acpi_lpss.c<br>
<br>
=C2=A0 =C2=A0179=C2=A0 <br>
=C2=A0 =C2=A0180=C2=A0 static void byt_i2c_setup(struct lpss_private_data *=
pdata)<br>
=C2=A0 =C2=A0181=C2=A0 {<br>
=C2=A0 =C2=A0182=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const char *uid_str =3D =
acpi_device_uid(pdata-&gt;adev);<br>
=C2=A0 =C2=A0183=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 acpi_handle handle =3D p=
data-&gt;adev-&gt;handle;<br>
=C2=A0 =C2=A0184=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long long share=
d_host =3D 0;<br>
=C2=A0 =C2=A0185=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 acpi_status status;<br>
=C2=A0 =C2=A0186=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 long uid =3D 0;<br>
=C2=A0 =C2=A0187=C2=A0 <br>
=C2=A0 =C2=A0188=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Expected to always be=
 true, but better safe then sorry */<br>
=C2=A0 =C2=A0189=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (uid_str)<br>
=C2=A0&gt; 190=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 uid =3D kstrtol(uid_str, NULL, 10);<br>
=C2=A0 =C2=A0191=C2=A0 <br>
=C2=A0 =C2=A0192=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Detect I2C bus shared=
 with PUNIT and ignore its d3 status */<br>
=C2=A0 =C2=A0193=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 status =3D acpi_evaluate=
_integer(handle, &quot;_SEM&quot;, NULL, &amp;shared_host);<br>
=C2=A0 =C2=A0194=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ACPI_SUCCESS(status)=
 &amp;&amp; shared_host &amp;&amp; uid)<br>
=C2=A0 =C2=A0195=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 pmc_atom_d3_mask &amp;=3D ~(BIT_LPSS2_F1_I2C1 &lt;&lt; (uid - 1));<br>
=C2=A0 =C2=A0196=C2=A0 <br>
=C2=A0 =C2=A0197=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lpss_deassert_reset(pdat=
a);<br>
=C2=A0 =C2=A0198=C2=A0 <br>
=C2=A0 =C2=A0199=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (readl(pdata-&gt;mmio=
_base + pdata-&gt;dev_desc-&gt;prv_offset))<br>
=C2=A0 =C2=A0200=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 pdata-&gt;fixed_clk_rate =3D 133000000;<br>
=C2=A0 =C2=A0201=C2=A0 <br>
=C2=A0 =C2=A0202=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 writel(0, pdata-&gt;mmio=
_base + LPSS_I2C_ENABLE);<br>
=C2=A0 =C2=A0203=C2=A0 }<br>
=C2=A0 =C2=A0204=C2=A0 <br>
<br>
---<br>
0-DAY CI Kernel Test Service, Intel Corporation<br>
<a href=3D"https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org" ta=
rget=3D"_blank">https://lists.01.org/<wbr>hyperkitty/list/kbuild-all@<wbr>l=
ists.01.org</a><br>
</blockquote><br><br>-- <br>With Best Regards,<br>Andy Shevchenko<br><br><b=
r>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAHp75Vfqfwsekb3vaeoXzEGPpjEfTVq2JGqczy3yP40EV=
vrSsQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAHp75Vfqfwsekb3vaeoXzEGPpjEfTVq2JG=
qczy3yP40EVvrSsQ%40mail.gmail.com</a>.<br />

--000000000000e06b3f05be80f120--
