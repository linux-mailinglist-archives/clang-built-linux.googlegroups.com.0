Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNMT3X2AKGQE72LJ7UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F121AB014
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 19:51:51 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id i126sf13673937oif.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 10:51:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586973110; cv=pass;
        d=google.com; s=arc-20160816;
        b=DX54wKO92Rx6frYnZ+d80R3bwhpZm6XS2VvgkKOH0wns09P4S0XAtJrjmn21AEa5A1
         GhP7OL1pVmHF2VzywzWj+SSMVCDvsln8uW5hfvu0IUcCbVIbOSgRYRJ3KJY6g8ukn8gw
         oiu0Q87K53oBMwRmyZfSAjslADJp1+5Y/4iHPSmxDaZfS+hz5whRSwpnmOx4FrLP44qt
         IaoLwEcLzsLGas6AFfCscGFZZcBnU2yg4I9mKs7reRTxKxnRb6H+BC7J9x3439sMfcFO
         J6GM3POun0j5Ca6C+WrN//Qzo3n0fU9e6JD9CEM35JxEck/uNsIvTjUrK3N2suTt6Tj6
         uINA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iAJZeUQYjCD4NxyIQvzvTtFGAxO+h7gqHqVSYCGMm70=;
        b=TC/VbuL6fIH5ia+JD2SsQbKTeMB10+TkRIiZuDhFBh+kbtfoIMxfZJSvPlBj32Ul5f
         CmuFMlZaamiDChTuzKQ9jefP8t/zgpBxtobDKX9ZE+RKVeE7D/Wdr0x5tdufLg/jZdww
         YPbNW15VfQjFSo4dBRsk3UlFabu8qHV/W9qzRNbk+X24otgo7PLEDetAXzotMIF5cJSV
         QP/jZ4XPn5H+u7eJSd6QmsMV8WOxBEZu9+Kn5n12NacPKDC8efUZ8avZfZ6eQs9gB2rF
         /aanKOfDxLYoRauvTAypq3rCAZ3WXpCaZqwRCKcQRmHwRMsWO2P1Vz6E5+dbd+0uXf5j
         elng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ezR2Uc23;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=iAJZeUQYjCD4NxyIQvzvTtFGAxO+h7gqHqVSYCGMm70=;
        b=C1LbmKavR+lUT0ad2QkruybI4QHvBo37mDhJpzHdVs2AgB6BbN9W5Jb5W9Y71WiGDb
         0GZBe73G3q6hMx/GGgPnaJD0ZTOQMYOzzVnLN6+VLWZN1hX1bd2s+l4CCnhJwdctiS0r
         6kgzbmsNNJnRY/LZWyy5/K/w7qMI+EcEGdVep8qQVzMCLPBSXOBbW4NBlYkQpbZmAr7q
         zrWK/RvTn3x92P3ooLifd21Hy5a6aBDpa+PjdR/Fu4ZJuxt/3KBotgCuWtVahiQkkyFk
         B6NMdGvQ6HP+RXLl2vLxom6xTgnNW7xLosWZLqPokrp5bZKWNzZxA3+wdFm2YHXHRs6V
         4fCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iAJZeUQYjCD4NxyIQvzvTtFGAxO+h7gqHqVSYCGMm70=;
        b=tZH5//7gfQCD3tSaQle+QwCZzm4o1Z9WZM6A+Mq69WA0AbXTVuF7ZYCyKLKJjvXcBW
         MDdUvKWQxbdHSZbvKAMESDWn+YlEcGin9cGE3iQMrDcoEB7g+HAFeSp7dLUh3MtkfGtJ
         JqqzljRkbIJA5A9sBYeLzN5moaRbAu/5hpkU7uJkjmOEWWeXDmFEjac5DV0rLWvWI2L0
         5BmUu8wfTot5gz3ygGiH/FLYLMKCPp65vdcQ+W+VEyPsnIUMIFKftfBMtqLCwlsvv2k0
         +PZv5k1ooxB275wRlO7qkxjR14VRGFBzkC3wKIT/oHMIU06N3Js6Jref2NG7dD3+OKai
         1buQ==
X-Gm-Message-State: AGi0PuZVF/7K64vM/UIUn8RX6WsPFeguAgLySEELJLdJ6vy6G0xezpXL
	BtkioYSRqtW6u8qSr7Ciu4Y=
X-Google-Smtp-Source: APiQypJmwtIwzrmA+AePrcD3aO+JsERe8f0+m+djKwAGO5CZyAjHrezsN0rJihqSzVz7/kk7FOWWVw==
X-Received: by 2002:aca:5f8a:: with SMTP id t132mr320400oib.132.1586973110040;
        Wed, 15 Apr 2020 10:51:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3104:: with SMTP id x4ls1119013oix.0.gmail; Wed, 15 Apr
 2020 10:51:49 -0700 (PDT)
X-Received: by 2002:a54:438c:: with SMTP id u12mr303571oiv.47.1586973109558;
        Wed, 15 Apr 2020 10:51:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586973109; cv=none;
        d=google.com; s=arc-20160816;
        b=gwUY5W3SsKWw0pJmUZLUGEs4Rg3C6NQDLXnlaWPN0hcyALTGB3yqH18RXZ7xDK/dzw
         XtlB3qJawr6IlOo2gVR+M26/XNz+SQ+DexUIZB7xuFExTgRErpEv7pgsegrWIkZiyjTc
         kd7oerR+QmMdggOEVd8Q0pSH8iOgWjVoDGdk6ieC73k8TtVH3UKaOFGtpI5QTvKAJQJg
         irMkeCkImdedbE4n4su242KFUkzZfOxEjOj7T7JYT2+hcFwZK39vmu4BfEtJZ8vJb0Xm
         uUVC6Vs4U0aHAHsyhvLxORKnGsGowRqxraTRBD6sm3tJVFfaPtDX1vjFJ2trRjF7BOXC
         AX3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/HRooCTnpkCyWMfOpzKDvcTBCC28xICpuujVh6q+2Iw=;
        b=rNBeaXo0XuUcfpaijAj5guGrNLzI4V1eSEwL3wYPJ5A50o7lrVBl7Bm/I8R3CxwKr2
         91iQ1v/e2PWzaYR8q4APKQwA4vAsnD2HVKSq7A+tsXtdAvhTaRHLGz61FWUJrBbkB9ST
         m/65ZcTwtpeIlfhU9GgNaBZwMj1OHUleBQlxEcb5vLXATfKZ5nkB9qdnT793FivsQooi
         kg9t54L6kcQfebDCFbjvnQAmTnlxmXfQC0DFfnerrVMGBgEpxHI7+h/BmdPRIbB7oQb2
         XUmXHCkzG6MS20xxj44vuXiQkm7Eq6rZBqsnfkegP2MoochDUyx5iCOAYWDnETzC+piR
         e+Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ezR2Uc23;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id e21si1404744oob.1.2020.04.15.10.51.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2020 10:51:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id n10so322526pff.3
        for <clang-built-linux@googlegroups.com>; Wed, 15 Apr 2020 10:51:49 -0700 (PDT)
X-Received: by 2002:a62:2a85:: with SMTP id q127mr18000023pfq.108.1586973107799;
 Wed, 15 Apr 2020 10:51:47 -0700 (PDT)
MIME-Version: 1.0
References: <202004150637.9F62YI28%lkp@intel.com> <20200415002618.GB19509@ubuntu-s3-xlarge-x86>
 <CABXOdTd-TSKR+x4ALQXAD9VGxd4sQCCVC9hzdGamyUr-ndBJ+w@mail.gmail.com>
In-Reply-To: <CABXOdTd-TSKR+x4ALQXAD9VGxd4sQCCVC9hzdGamyUr-ndBJ+w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 15 Apr 2020 10:51:37 -0700
Message-ID: <CAKwvOdnOuMcjzsqTt2aVtoiKN3L9zOONGX-4BJgRWedeWspWTA@mail.gmail.com>
Subject: Re: [chrome-os:chromeos-4.19 21350/21402] drivers/misc/echo/echo.c:384:27:
 error: equality comparison with extraneous parentheses
To: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>, Guenter Roeck <groeck@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild test robot <lkp@intel.com>, cros-kernel-buildreports@googlegroups.com, 
	kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ezR2Uc23;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Tue, Apr 14, 2020 at 5:56 PM 'Guenter Roeck' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Tue, Apr 14, 2020 at 5:26 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Hi all,
> >
> > Sorry for yet another convergeance on this commit... :/ hopefully this
> > does not continue for much longer. None of the warnings are obviously
> > caused by the patch below.
>> Fixed by commit 85dc2c65e6c9 ("misc: echo: Remove unnecessary
>> parentheses and simplify check for zero").
> >
> No worries.
>
> I noticed that the problems are pretty much all fixed in the upstream
> kernel. I just wasn't sure if it would be worthwhile sending a request
> to stable@ to have them applied to 4.19.y (and if necessary 5.4.y).
> Any suggestions ?

We should strive to be warning free on stable.  Thanks for identifying
the fix Nathan.

Greg, Sasha,
Would you please cherry pick 85dc2c65e6c9 to 4.19.y, 4.14.y, 4.9.y,
and 4.4.y (maybe 3.18, didn't check that one)? It applies cleanly and
is a trivial fix for a warning that landed in v4.20-rc1.

`git describe --contains "$tag" | sed 's/~.*//'` is my trick for
finding the first tag that contained a commit.

>
> Thanks,
> Guenter
>
>
> Guenter
>
> > On Wed, Apr 15, 2020 at 06:09:47AM +0800, kbuild test robot wrote:
> > > tree:   https://chromium.googlesource.com/chromiumos/third_party/kern=
el chromeos-4.19
> > > head:   e747fc8dfce13c501be9b7032a5a3d8249bc27ab
> > > commit: 12bd892cc0bd4a700dd41aa4b0d1e0cfc128e3e4 [21350/21402] CHROMI=
UM: Merge 'v4.19.114' into chromeos-4.19
> > > config: x86_64-randconfig-c002-20200414 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project =
f3da6b7ab5698bb0b9bd208972115dbcbbc59f27)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master=
/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         git checkout 12bd892cc0bd4a700dd41aa4b0d1e0cfc128e3e4
> > >         # save the attached .config to linux build tree
> > >         COMPILER=3Dclang make.cross ARCH=3Dx86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > > >> drivers/misc/echo/echo.c:384:27: error: equality comparison with e=
xtraneous parentheses [-Werror,-Wparentheses-equality]
> > >            if ((ec->nonupdate_dwell =3D=3D 0)) {
> > >                 ~~~~~~~~~~~~~~~~~~~~^~~~
> > >    drivers/misc/echo/echo.c:384:27: note: remove extraneous parenthes=
es around the comparison to silence this warning
> > >            if ((ec->nonupdate_dwell =3D=3D 0)) {
> > >                ~                    ^   ~
> > >    drivers/misc/echo/echo.c:384:27: note: use '=3D' to turn this equa=
lity comparison into an assignment
> > >            if ((ec->nonupdate_dwell =3D=3D 0)) {
> > >                                     ^~
> > >                                     =3D
> > >    1 error generated.
> >
> > Fixed by commit 85dc2c65e6c9 ("misc: echo: Remove unnecessary
> > parentheses and simplify check for zero").
> >
> > > >> net/decnet/dn_dev.c:1366:10: error: address of array 'dev->name' w=
ill always evaluate to 'true' [-Werror,-Wpointer-bool-conversion]
> > >                                    dev->name ? dev->name : "???",
> > >                                    ~~~~~^~~~ ~
> > >    1 error generated.
> >
> > Fixed by commit 5b9b0a80aa1a ("decnet: Remove unnecessary check for
> > dev->name").
> >
> > > >> drivers/regulator/da903x.c:395:2: error: division by zero is undef=
ined [-Werror,-Wdivision-by-zero]
> > >            DA9030_LDO(13, 2100, 2100, 0, INVAL, 0, 0, RCTL11, 3), /* =
fixed @2.1V */
> > >            ^                          ~
> > >    drivers/regulator/da903x.c:359:2: note: expanded from macro 'DA903=
0_LDO'
> > >            DA903x_LDO(DA9030, _id, min, max, step, vreg, shift, nbits=
, ereg, ebit)
> > >            ^                                 ~~~~
> > >    drivers/regulator/da903x.c:320:39: note: expanded from macro 'DA90=
3x_LDO'
> > >                    .n_voltages =3D (step) ? ((max - min) / step + 1) =
: 1,    \
> > >                                                        ^ ~~~~
> > >    drivers/regulator/da903x.c:415:2: error: division by zero is undef=
ined [-Werror,-Wdivision-by-zero]
> > >            DA9034_LDO(5, 3100, 3100, 0, INVAL, 0, 0, OVER3, 7), /* fi=
xed @3.1V */
> > >            ^                         ~
> > >    drivers/regulator/da903x.c:356:2: note: expanded from macro 'DA903=
4_LDO'
> > >            DA903x_LDO(DA9034, _id, min, max, step, vreg, shift, nbits=
, ereg, ebit)
> > >            ^                                 ~~~~
> > >    drivers/regulator/da903x.c:320:39: note: expanded from macro 'DA90=
3x_LDO'
> > >                    .n_voltages =3D (step) ? ((max - min) / step + 1) =
: 1,    \
> > >                                                        ^ ~~~~
> > >    2 errors generated.
> >
> > "Fixed" by commit 0077aaaeeb69 ("regulator: da903x: don't build with
> > clang"). I do not think the Clang fix ever got finalized.
> >
> > >    In file included from drivers/scsi/osd/osd_uld.c:60:
> > >    In file included from include/scsi/osd_initiator.h:18:
> > > >> include/scsi/osd_types.h:31:21: error: 'weak' attribute only appli=
es to variables, functions, and classes [-Werror,-Wignored-attributes]
> > >    static const struct __weak osd_obj_id osd_root_object =3D {0, 0};
> > >                        ^
> > >    include/linux/compiler_types.h:219:33: note: expanded from macro '=
__weak'
> > >    #define __weak                  __attribute__((weak))
> > >                                                   ^
> > >    1 error generated.
> >
> > "Fixed" by just deleting the driver in commit 19fcae3d4f2d ("scsi:
> > remove the SCSI OSD library"). I did send a patch to fix it which
> > spurred the deletion, if we wanted to take it in stable if we care:
> >
> > https://lore.kernel.org/lkml/20190126064740.12949-1-natechancellor@gmai=
l.com/
> >
> > > vim +384 drivers/misc/echo/echo.c
> > >
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  273
> > > 9d8f2d5dfbcc9d drivers/staging/echo/echo.c Tzafrir Cohen       2008-1=
0-12  274  int16_t oslec_update(struct oslec_state *ec, int16_t tx, int16_t=
 rx)
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  275  {
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  276        int32_t echo_value;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  277        int clean_bg;
> > > 3ec50be588d773 drivers/staging/echo/echo.c Jesper Juhl         2012-0=
6-27  278        int tmp;
> > > 3ec50be588d773 drivers/staging/echo/echo.c Jesper Juhl         2012-0=
6-27  279        int tmp1;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  280
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  281        /*
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  282         * Input scaling was found be required to prevent problems=
 when tx
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  283         * starts clipping.  Another possible way to handle this w=
ould be the
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  284         * filter coefficent scaling.
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  285         */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  286
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  287        ec->tx =3D tx;
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  288        ec->rx =3D rx;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  289        tx >>=3D 1;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  290        rx >>=3D 1;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  291
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  292        /*
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  293         * Filter DC, 3dB point is 160Hz (I think), note 32 bit pr=
ecision
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  294         * required otherwise values do not track down to 0. Zero =
at DC, Pole
> > > 196e76e86a3a90 drivers/staging/echo/echo.c David Rowe          2009-0=
8-23  295         * at (1-Beta) on real axis.  Some chip sets (like Si labs=
) don't
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  296         * need this, but something like a $10 X100P card does.  A=
ny DC really
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  297         * slows down convergence.
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  298         *
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  299         * Note: removes some low frequency from the signal, this =
reduces the
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  300         * speech quality when listening to samples through headph=
ones but may
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  301         * not be obvious through a telephone handset.
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  302         *
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  303         * Note that the 3dB frequency in radians is approx Beta, =
e.g. for Beta
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  304         * =3D 2^(-3) =3D 0.125, 3dB freq is 0.125 rads =3D 159Hz.
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  305         */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  306
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  307        if (ec->adaption_mode & ECHO_CAN_USE_RX_HPF) {
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  308                tmp =3D rx << 15;
> > > 196e76e86a3a90 drivers/staging/echo/echo.c David Rowe          2009-0=
8-23  309
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  310                /*
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  311                 * Make sure the gain of the HPF is 1.0. This can =
still
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  312                 * saturate a little under impulse conditions, and=
 it might
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  313                 * roll to 32768 and need clipping on sustained pe=
ak level
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  314                 * signals. However, the scale of such clipping is=
 small, and
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  315                 * the error due to any saturation should not mark=
edly affect
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  316                 * the downstream processing.
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  317                 */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  318                tmp -=3D (tmp >> 4);
> > > 196e76e86a3a90 drivers/staging/echo/echo.c David Rowe          2009-0=
8-23  319
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  320                ec->rx_1 +=3D -(ec->rx_1 >> DC_LOG2BETA) + tmp - e=
c->rx_2;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  321
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  322                /*
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  323                 * hard limit filter to prevent clipping.  Note th=
at at this
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  324                 * stage rx should be limited to +/- 16383 due to =
right shift
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  325                 * above
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  326                 */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  327                tmp1 =3D ec->rx_1 >> 15;
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  328                if (tmp1 > 16383)
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  329                        tmp1 =3D 16383;
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  330                if (tmp1 < -16383)
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  331                        tmp1 =3D -16383;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  332                rx =3D tmp1;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  333                ec->rx_2 =3D tmp;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  334        }
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  335
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  336        /* Block average of power in the filter states.  Used for
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  337           adaption power calculation. */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  338
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  339        {
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  340                int new, old;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  341
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  342                /* efficient "out with the old and in with the new=
" algorithm so
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  343                   we don't have to recalculate over the whole blo=
ck of
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  344                   samples. */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  345                new =3D (int)tx * (int)tx;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  346                old =3D (int)ec->fir_state.history[ec->fir_state.c=
urr_pos] *
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  347                    (int)ec->fir_state.history[ec->fir_state.curr_=
pos];
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  348                ec->pstates +=3D
> > > 0f51010e87636e drivers/staging/echo/echo.c David Rowe          2009-0=
5-20  349                    ((new - old) + (1 << (ec->log2taps - 1))) >> e=
c->log2taps;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  350                if (ec->pstates < 0)
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  351                        ec->pstates =3D 0;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  352        }
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  353
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  354        /* Calculate short term average levels using simple single=
 pole IIRs */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  355
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  356        ec->ltxacc +=3D abs(tx) - ec->ltx;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  357        ec->ltx =3D (ec->ltxacc + (1 << 4)) >> 5;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  358        ec->lrxacc +=3D abs(rx) - ec->lrx;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  359        ec->lrx =3D (ec->lrxacc + (1 << 4)) >> 5;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  360
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  361        /* Foreground filter */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  362
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  363        ec->fir_state.coeffs =3D ec->fir_taps16[0];
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  364        echo_value =3D fir16(&ec->fir_state, tx);
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  365        ec->clean =3D rx - echo_value;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  366        ec->lcleanacc +=3D abs(ec->clean) - ec->lclean;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  367        ec->lclean =3D (ec->lcleanacc + (1 << 4)) >> 5;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  368
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  369        /* Background filter */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  370
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  371        echo_value =3D fir16(&ec->fir_state_bg, tx);
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  372        clean_bg =3D rx - echo_value;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  373        ec->lclean_bgacc +=3D abs(clean_bg) - ec->lclean_bg;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  374        ec->lclean_bg =3D (ec->lclean_bgacc + (1 << 4)) >> 5;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  375
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  376        /* Background Filter adaption */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  377
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  378        /* Almost always adap bg filter, just simple DT and energy
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  379           detection to minimise adaption in cases of strong doubl=
e talk.
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  380           However this is not critical for the dual path algorith=
m.
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  381         */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  382        ec->factor =3D 0;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  383        ec->shift =3D 0;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06 @384        if ((ec->nonupdate_dwell =3D=3D 0)) {
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  385                int p, logp, shift;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  386
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  387                /* Determine:
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  388
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  389                   f =3D Beta * clean_bg_rx/P ------ (1)
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  390
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  391                   where P is the total power in the filter states=
.
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  392
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  393                   The Boffins have shown that if we obey (1) we c=
onverge
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  394                   quickly and avoid instability.
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  395
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  396                   The correct factor f must be in Q30, as this is=
 the fixed
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  397                   point format required by the lms_adapt_bg() fun=
ction,
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  398                   therefore the scaled version of (1) is:
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  399
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  400                   (2^30) * f  =3D (2^30) * Beta * clean_bg_rx/P
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  401                   factor      =3D (2^30) * Beta * clean_bg_rx/P  =
   ----- (2)
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  402
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  403                   We have chosen Beta =3D 0.25 by experiment, so:
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  404
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  405                   factor      =3D (2^30) * (2^-2) * clean_bg_rx/P
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  406
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  407                   (30 - 2 - log2(P))
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  408                   factor      =3D clean_bg_rx 2                  =
   ----- (3)
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  409
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  410                   To avoid a divide we approximate log2(P) as top=
_bit(P),
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  411                   which returns the position of the highest non-z=
ero bit in
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  412                   P.  This approximation introduces an error as l=
arge as a
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  413                   factor of 2, but the algorithm seems to handle =
it OK.
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  414
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  415                   Come to think of it a divide may not be a big d=
eal on a
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  416                   modern DSP, so its probably worth checking out =
the cycles
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  417                   for a divide versus a top_bit() implementation.
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  418                 */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  419
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  420                p =3D MIN_TX_POWER_FOR_ADAPTION + ec->pstates;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  421                logp =3D top_bit(p) + ec->log2taps;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  422                shift =3D 30 - 2 - logp;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  423                ec->shift =3D shift;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  424
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  425                lms_adapt_bg(ec, clean_bg, shift);
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  426        }
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  427
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  428        /* very simple DTD to make sure we dont try and adapt with=
 strong
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  429           near end speech */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  430
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  431        ec->adapt =3D 0;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  432        if ((ec->lrx > MIN_RX_POWER_FOR_ADAPTION) && (ec->lrx > ec=
->ltx))
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  433                ec->nonupdate_dwell =3D DTD_HANGOVER;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  434        if (ec->nonupdate_dwell)
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  435                ec->nonupdate_dwell--;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  436
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  437        /* Transfer logic */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  438
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  439        /* These conditions are from the dual path paper [1], I me=
ssed with
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  440           them a bit to improve performance. */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  441
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  442        if ((ec->adaption_mode & ECHO_CAN_USE_ADAPTION) &&
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  443            (ec->nonupdate_dwell =3D=3D 0) &&
> > > dc57a3ea80a85a drivers/staging/echo/echo.c Alexander Beregalov 2009-0=
3-12  444            /* (ec->Lclean_bg < 0.875*ec->Lclean) */
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  445            (8 * ec->lclean_bg < 7 * ec->lclean) &&
> > > dc57a3ea80a85a drivers/staging/echo/echo.c Alexander Beregalov 2009-0=
3-12  446            /* (ec->Lclean_bg < 0.125*ec->Ltx) */
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  447            (8 * ec->lclean_bg < ec->ltx)) {
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  448                if (ec->cond_met =3D=3D 6) {
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  449                        /*
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  450                         * BG filter has had better results for 6 =
consecutive
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  451                         * samples
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  452                         */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  453                        ec->adapt =3D 1;
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  454                        memcpy(ec->fir_taps16[0], ec->fir_taps16[1=
],
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  455                               ec->taps * sizeof(int16_t));
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  456                } else
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  457                        ec->cond_met++;
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  458        } else
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  459                ec->cond_met =3D 0;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  460
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  461        /* Non-Linear Processing */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  462
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  463        ec->clean_nlp =3D ec->clean;
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  464        if (ec->adaption_mode & ECHO_CAN_USE_NLP) {
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  465                /*
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  466                 * Non-linear processor - a fancy way to say "zap =
small
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  467                 * signals, to avoid residual echo due to (uLaw/AL=
aw)
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  468                 * non-linearity in the channel.".
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  469                 */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  470
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  471                if ((16 * ec->lclean < ec->ltx)) {
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  472                        /*
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  473                         * Our e/c has improved echo by at least 2=
4 dB (each
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  474                         * factor of 2 is 6dB, so 2*2*2*2=3D16 is =
the same as
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  475                         * 6+6+6+6=3D24dB)
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  476                         */
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  477                        if (ec->adaption_mode & ECHO_CAN_USE_CNG) =
{
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  478                                ec->cng_level =3D ec->lbgn;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  479
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  480                                /*
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  481                                 * Very elementary comfort noise g=
eneration.
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  482                                 * Just random numbers rolled off =
very vaguely
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  483                                 * Hoth-like.  DR: This noise does=
n't sound
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  484                                 * quite right to me - I suspect t=
here are some
> > > 83aa3c7bf3f04a drivers/staging/echo/echo.c Jonathan Neusch=C3=A4fer 2=
011-03-01  485                                 * overflow issues in the fil=
tering as it's too
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  486                                 * "crackly".
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  487                                 * TODO: debug this, maybe just pl=
ay noise at
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  488                                 * high level or look at spectrum.
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  489                                 */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  490
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  491                                ec->cng_rndnum =3D
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  492                                    1664525U * ec->cng_rndnum + 10=
13904223U;
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  493                                ec->cng_filter =3D
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  494                                    ((ec->cng_rndnum & 0xFFFF) - 3=
2768 +
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  495                                     5 * ec->cng_filter) >> 3;
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  496                                ec->clean_nlp =3D
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  497                                    (ec->cng_filter * ec->cng_leve=
l * 8) >> 14;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  498
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  499                        } else if (ec->adaption_mode & ECHO_CAN_US=
E_CLIP) {
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  500                                /* This sounds much better than CN=
G */
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  501                                if (ec->clean_nlp > ec->lbgn)
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  502                                        ec->clean_nlp =3D ec->lbgn=
;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  503                                if (ec->clean_nlp < -ec->lbgn)
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  504                                        ec->clean_nlp =3D -ec->lbg=
n;
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  505                        } else {
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  506                                /*
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  507                                 * just mute the residual, doesn't=
 sound very
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  508                                 * good, used mainly in G168 tests
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  509                                 */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  510                                ec->clean_nlp =3D 0;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  511                        }
> > > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-1=
0-20  512                } else {
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  513                        /*
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  514                         * Background noise estimator.  I tried a =
few
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  515                         * algorithms here without much luck.  Thi=
s very simple
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  516                         * one seems to work best, we just average=
 the level
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  517                         * using a slow (1 sec time const) filter =
if the
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  518                         * current level is less than a (experimen=
tally
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  519                         * derived) constant.  This means we dont =
include high
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  520                         * level signals like near end speech.  Wh=
en combined
> > > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-0=
8-10  521                         * with CNG or especially CLIP seems to wo=
rk OK.
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  522                         */
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  523                        if (ec->lclean < 40) {
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  524                                ec->lbgn_acc +=3D abs(ec->clean) -=
 ec->lbgn;
> > > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-0=
5-05  525                                ec->lbgn =3D (ec->lbgn_acc + (1 <<=
 11)) >> 12;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  526                        }
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  527                }
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  528        }
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  529
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  530        /* Roll around the taps buffer */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  531        if (ec->curr_pos <=3D 0)
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  532                ec->curr_pos =3D ec->taps;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  533        ec->curr_pos--;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  534
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  535        if (ec->adaption_mode & ECHO_CAN_DISABLE)
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  536                ec->clean_nlp =3D rx;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  537
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  538        /* Output scaled back up again to match input scaling */
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  539
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  540        return (int16_t) ec->clean_nlp << 1;
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  541  }
> > > 9d8f2d5dfbcc9d drivers/staging/echo/echo.c Tzafrir Cohen       2008-1=
0-12  542  EXPORT_SYMBOL_GPL(oslec_update);
> > > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-1=
0-06  543
> > >
> > > :::::: The code at line 384 was first introduced by commit
> > > :::::: 10602db812fa270fc923f5e48fb47202288828f3 Staging: add echo can=
celation module
> > >
> > > :::::: TO: David Rowe <david@rowetel.com>
> > > :::::: CC: Greg Kroah-Hartman <gregkh@suse.de>
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnOuMcjzsqTt2aVtoiKN3L9zOONGX-4BJgRWedeWspWTA%40mai=
l.gmail.com.
