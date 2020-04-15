Return-Path: <clang-built-linux+bncBDS6DTHSSUKBBSNX3H2AKGQENF6WE4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D941A8FF0
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 02:56:42 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id nk12sf14645386pjb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 17:56:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586912201; cv=pass;
        d=google.com; s=arc-20160816;
        b=DyVg5tyfBLziMso9Bz9grl+se0H4ReyK2L6gduNScA9oAz6KNTI6yXeuCFqkuove/S
         MnqsnFsBDFySuxIDm/I5572CwszidOV+o1h3aRH3POt8WgS2x3D0au57bBSNvWxD+bVs
         T8iHNO78rNjhRIavXMRdgwEoddOhZYDRuqADAEyMKZMbn1ZaZgu1L7JL7vbkgXFr+4Rt
         GWBetgiNbIgBhudn6PMlslEG6wYXUnqqgwPit9xzz0ZnjZNcgWKfsk8Vuvusf9cdCAXM
         +xmm1mTaVZt9kegaZgYLTmn/duRo4ad9jxzymCw17xlqhUzyyWB9drQwCOFkrndTv27d
         d9gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wmHZTw+S3SouvCBiv33JUhcrnJBdy5HSLCZ77dbVBMg=;
        b=Ax39NEz09/73aw3mu7ZO9J0/9WjhbWlypOQEjd4OD1Ld0rej1Xul6TpBYY9W6JwGhv
         PITu2xs1e+ptSL6muhuhHgLnmti1xNAXOjtGVBDrt71g3TM40Lux6lFgDyp+teq5Wm62
         xrN718uioG9GzOxo6r7E1bZtROrIWtfHtckuU9TEC722N/gH+6fIeKhgNrWjSWt99Ire
         MOgQqTRhMKUX8Xh9HTZ9zCLO4H/rgQFgoo/GMjzOzR4UIdXG8XWIbCMjRh1Kp9h/pYZE
         2kkMVy/G+WVVDlbzwPKClqVgjaj43ugVQf6sDWa8FN0rx/Rf45wTpK4JI705iwy1kE4p
         orrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sMAzuIB+;
       spf=pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=wmHZTw+S3SouvCBiv33JUhcrnJBdy5HSLCZ77dbVBMg=;
        b=iPtUNH0mLlrGJkpRsETjwLCjoIYCnHayOwmq/qcjJKC0fzQCpzYsOFRIZDXAAEYd5y
         fVKKX0vh8hFosSSJt9pyLogb9TdIJRnYbt6Ba7CKBIwaYj/Dr/13eqok5/Wbbd189uqd
         773X/5xVWdnfeBO3ehG2s7LIVYXlmzYkJ21Es/eaAOPs+vCQdZ7B3PcgfB9YV4PgcV2e
         2fcFdUq0+KTU1vPkeJYfOiyGs7UMY+NknMnfmEWEoiyo1D8bgTLHbB/jgAtfi+oll/c9
         e9eZidn3HbWrqNNxz/2qf4tIkFYTM6Om5iKl5tluIAGSk7GY5sFwOWj/RV59Xuj8Ssp+
         0AwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wmHZTw+S3SouvCBiv33JUhcrnJBdy5HSLCZ77dbVBMg=;
        b=efloydZAM2ZMy/Hw3UGsc3p+yVY+hy+RYFlK7ekoghKTFtxcTiwSPDKVF2oeoFuG3l
         ESXyJ8vxLtcxPDDq85XjztmkQlLKAi5fVAV+GQmhNJ5DQTQjvcqNw6uSzV2Qw+UIdZoQ
         HxQ50oAFmXiWnJMN9Ol5TJ4BHvNhZd7rRNM0zQNsxUDxnk2C4NygVyHOEzVOtupXrZLx
         EyqLQKejLVoyeN3e7w9BDfhKP+IhVecv+SgC/SsrbnzIM0lDboQ9PDe40gEP60JNNQLx
         gMtQzueQhapYkvfLP/qjO46m7iZi8bnzjlwjOs4eC9x+eOaw3lzLYnwf94OSVAoEaglL
         kNKg==
X-Gm-Message-State: AGi0PuaQzQVOKH8oKzSjEPcAIkGQKbgQGUlVMr/aeRbCtuzfuj0m1DcF
	mpqc3AOW5huZv6csZQe+j/w=
X-Google-Smtp-Source: APiQypKKbgz1Z0/LBHL0gGwyB2HZqVStWvyNij7IcpGa/hsOM2z9kc/Ji29+Vh3xQRR/HtNiBHbpYg==
X-Received: by 2002:a17:90a:b28e:: with SMTP id c14mr3200311pjr.168.1586912201346;
        Tue, 14 Apr 2020 17:56:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e7c4:: with SMTP id kb4ls5360649pjb.0.gmail; Tue, 14
 Apr 2020 17:56:40 -0700 (PDT)
X-Received: by 2002:a17:90a:d901:: with SMTP id c1mr3357774pjv.120.1586912200677;
        Tue, 14 Apr 2020 17:56:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586912200; cv=none;
        d=google.com; s=arc-20160816;
        b=Lf3tYu0LKrv6Jks5Dxt4x4gjUOlZjTEMmjvXRcXEX1Zl8pnvNpbks1C4ZmPlcOWAqz
         IfzSOyUhuNiQ2Mx3o0zAaZvx6rWVyDx5XokHGqZEnxbzwVCaJfZNuQz0xLk8Iudq/c7E
         AWc4zxip2yu/CFgPJ9bgR0CzzU/M349d9Gqkm7JZhIADHvtwNZX4sn5VtN/DHarXFbTT
         d0l2CBJ+1BPR/ntp7SLI0ZuWNnAtTyULVICYmXbgoxvi7pkQ+kl12sgcQrOJ25iLzmNR
         B4ze/Wfomn+DIbcj447Ej7lKcyPTl9Y21SgPDZn+mJJpOEYJX3Vj67HvQuUQK4AvN7KM
         hEBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2rWjow8ybJIUC+TCNDBSON9r+8fU6OJ4sPLdCVVXtok=;
        b=YADjxI/m8GIijXCKUWjumcicxz4TWHRJ/UiXxkirlBwh6ziSOl9fwGBKkjyb9PpT3V
         FHiKwGFkysBL97bDE5LwQz8/I46RO0mGDy+NzbjCkQEn7Zd7AcW+Xw/kFvsqiYtltYDJ
         FCM/390tAFJ5VH4ZpimAjK6VPd3U+mVsfvs+JDFYlSxW9fDvAiyRZwQlW5OIClBUwv/M
         QlmuC7Mu5JT3uEqePt4Id/LaAEdVDf2ztONiIjSC8qMevSyUzCAHYHm8FeDILLQHo0Ih
         dH0kSzl6y9YwdR4vqH/zlaxTvz8iyvq7ntJQakQbVza0a91tjoFulfzY/Zg4DlblyAkE
         Ygkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sMAzuIB+;
       spf=pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id g6si713856pjl.1.2020.04.14.17.56.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 17:56:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id f13so6517998ybk.7
        for <clang-built-linux@googlegroups.com>; Tue, 14 Apr 2020 17:56:40 -0700 (PDT)
X-Received: by 2002:a25:690b:: with SMTP id e11mr4651544ybc.152.1586912198835;
 Tue, 14 Apr 2020 17:56:38 -0700 (PDT)
MIME-Version: 1.0
References: <202004150637.9F62YI28%lkp@intel.com> <20200415002618.GB19509@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200415002618.GB19509@ubuntu-s3-xlarge-x86>
From: "'Guenter Roeck' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Apr 2020 17:56:27 -0700
Message-ID: <CABXOdTd-TSKR+x4ALQXAD9VGxd4sQCCVC9hzdGamyUr-ndBJ+w@mail.gmail.com>
Subject: Re: [chrome-os:chromeos-4.19 21350/21402] drivers/misc/echo/echo.c:384:27:
 error: equality comparison with extraneous parentheses
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild test robot <lkp@intel.com>, cros-kernel-buildreports@googlegroups.com, 
	kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: groeck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sMAzuIB+;       spf=pass
 (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::b42 as
 permitted sender) smtp.mailfrom=groeck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Guenter Roeck <groeck@google.com>
Reply-To: Guenter Roeck <groeck@google.com>
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

On Tue, Apr 14, 2020 at 5:26 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi all,
>
> Sorry for yet another convergeance on this commit... :/ hopefully this
> does not continue for much longer. None of the warnings are obviously
> caused by the patch below.
>
No worries.

I noticed that the problems are pretty much all fixed in the upstream
kernel. I just wasn't sure if it would be worthwhile sending a request
to stable@ to have them applied to 4.19.y (and if necessary 5.4.y).
Any suggestions ?

Thanks,
Guenter


Guenter

> On Wed, Apr 15, 2020 at 06:09:47AM +0800, kbuild test robot wrote:
> > tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel=
 chromeos-4.19
> > head:   e747fc8dfce13c501be9b7032a5a3d8249bc27ab
> > commit: 12bd892cc0bd4a700dd41aa4b0d1e0cfc128e3e4 [21350/21402] CHROMIUM=
: Merge 'v4.19.114' into chromeos-4.19
> > config: x86_64-randconfig-c002-20200414 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f3=
da6b7ab5698bb0b9bd208972115dbcbbc59f27)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 12bd892cc0bd4a700dd41aa4b0d1e0cfc128e3e4
> >         # save the attached .config to linux build tree
> >         COMPILER=3Dclang make.cross ARCH=3Dx86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> drivers/misc/echo/echo.c:384:27: error: equality comparison with ext=
raneous parentheses [-Werror,-Wparentheses-equality]
> >            if ((ec->nonupdate_dwell =3D=3D 0)) {
> >                 ~~~~~~~~~~~~~~~~~~~~^~~~
> >    drivers/misc/echo/echo.c:384:27: note: remove extraneous parentheses=
 around the comparison to silence this warning
> >            if ((ec->nonupdate_dwell =3D=3D 0)) {
> >                ~                    ^   ~
> >    drivers/misc/echo/echo.c:384:27: note: use '=3D' to turn this equali=
ty comparison into an assignment
> >            if ((ec->nonupdate_dwell =3D=3D 0)) {
> >                                     ^~
> >                                     =3D
> >    1 error generated.
>
> Fixed by commit 85dc2c65e6c9 ("misc: echo: Remove unnecessary
> parentheses and simplify check for zero").
>
> > >> net/decnet/dn_dev.c:1366:10: error: address of array 'dev->name' wil=
l always evaluate to 'true' [-Werror,-Wpointer-bool-conversion]
> >                                    dev->name ? dev->name : "???",
> >                                    ~~~~~^~~~ ~
> >    1 error generated.
>
> Fixed by commit 5b9b0a80aa1a ("decnet: Remove unnecessary check for
> dev->name").
>
> > >> drivers/regulator/da903x.c:395:2: error: division by zero is undefin=
ed [-Werror,-Wdivision-by-zero]
> >            DA9030_LDO(13, 2100, 2100, 0, INVAL, 0, 0, RCTL11, 3), /* fi=
xed @2.1V */
> >            ^                          ~
> >    drivers/regulator/da903x.c:359:2: note: expanded from macro 'DA9030_=
LDO'
> >            DA903x_LDO(DA9030, _id, min, max, step, vreg, shift, nbits, =
ereg, ebit)
> >            ^                                 ~~~~
> >    drivers/regulator/da903x.c:320:39: note: expanded from macro 'DA903x=
_LDO'
> >                    .n_voltages =3D (step) ? ((max - min) / step + 1) : =
1,    \
> >                                                        ^ ~~~~
> >    drivers/regulator/da903x.c:415:2: error: division by zero is undefin=
ed [-Werror,-Wdivision-by-zero]
> >            DA9034_LDO(5, 3100, 3100, 0, INVAL, 0, 0, OVER3, 7), /* fixe=
d @3.1V */
> >            ^                         ~
> >    drivers/regulator/da903x.c:356:2: note: expanded from macro 'DA9034_=
LDO'
> >            DA903x_LDO(DA9034, _id, min, max, step, vreg, shift, nbits, =
ereg, ebit)
> >            ^                                 ~~~~
> >    drivers/regulator/da903x.c:320:39: note: expanded from macro 'DA903x=
_LDO'
> >                    .n_voltages =3D (step) ? ((max - min) / step + 1) : =
1,    \
> >                                                        ^ ~~~~
> >    2 errors generated.
>
> "Fixed" by commit 0077aaaeeb69 ("regulator: da903x: don't build with
> clang"). I do not think the Clang fix ever got finalized.
>
> >    In file included from drivers/scsi/osd/osd_uld.c:60:
> >    In file included from include/scsi/osd_initiator.h:18:
> > >> include/scsi/osd_types.h:31:21: error: 'weak' attribute only applies=
 to variables, functions, and classes [-Werror,-Wignored-attributes]
> >    static const struct __weak osd_obj_id osd_root_object =3D {0, 0};
> >                        ^
> >    include/linux/compiler_types.h:219:33: note: expanded from macro '__=
weak'
> >    #define __weak                  __attribute__((weak))
> >                                                   ^
> >    1 error generated.
>
> "Fixed" by just deleting the driver in commit 19fcae3d4f2d ("scsi:
> remove the SCSI OSD library"). I did send a patch to fix it which
> spurred the deletion, if we wanted to take it in stable if we care:
>
> https://lore.kernel.org/lkml/20190126064740.12949-1-natechancellor@gmail.=
com/
>
> > vim +384 drivers/misc/echo/echo.c
> >
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  273
> > 9d8f2d5dfbcc9d drivers/staging/echo/echo.c Tzafrir Cohen       2008-10-=
12  274  int16_t oslec_update(struct oslec_state *ec, int16_t tx, int16_t r=
x)
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  275  {
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  276        int32_t echo_value;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  277        int clean_bg;
> > 3ec50be588d773 drivers/staging/echo/echo.c Jesper Juhl         2012-06-=
27  278        int tmp;
> > 3ec50be588d773 drivers/staging/echo/echo.c Jesper Juhl         2012-06-=
27  279        int tmp1;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  280
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  281        /*
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  282         * Input scaling was found be required to prevent problems w=
hen tx
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  283         * starts clipping.  Another possible way to handle this wou=
ld be the
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  284         * filter coefficent scaling.
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  285         */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  286
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  287        ec->tx =3D tx;
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  288        ec->rx =3D rx;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  289        tx >>=3D 1;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  290        rx >>=3D 1;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  291
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  292        /*
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  293         * Filter DC, 3dB point is 160Hz (I think), note 32 bit prec=
ision
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  294         * required otherwise values do not track down to 0. Zero at=
 DC, Pole
> > 196e76e86a3a90 drivers/staging/echo/echo.c David Rowe          2009-08-=
23  295         * at (1-Beta) on real axis.  Some chip sets (like Si labs) =
don't
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  296         * need this, but something like a $10 X100P card does.  Any=
 DC really
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  297         * slows down convergence.
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  298         *
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  299         * Note: removes some low frequency from the signal, this re=
duces the
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  300         * speech quality when listening to samples through headphon=
es but may
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  301         * not be obvious through a telephone handset.
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  302         *
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  303         * Note that the 3dB frequency in radians is approx Beta, e.=
g. for Beta
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  304         * =3D 2^(-3) =3D 0.125, 3dB freq is 0.125 rads =3D 159Hz.
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  305         */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  306
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  307        if (ec->adaption_mode & ECHO_CAN_USE_RX_HPF) {
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  308                tmp =3D rx << 15;
> > 196e76e86a3a90 drivers/staging/echo/echo.c David Rowe          2009-08-=
23  309
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  310                /*
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  311                 * Make sure the gain of the HPF is 1.0. This can st=
ill
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  312                 * saturate a little under impulse conditions, and i=
t might
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  313                 * roll to 32768 and need clipping on sustained peak=
 level
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  314                 * signals. However, the scale of such clipping is s=
mall, and
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  315                 * the error due to any saturation should not marked=
ly affect
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  316                 * the downstream processing.
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  317                 */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  318                tmp -=3D (tmp >> 4);
> > 196e76e86a3a90 drivers/staging/echo/echo.c David Rowe          2009-08-=
23  319
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  320                ec->rx_1 +=3D -(ec->rx_1 >> DC_LOG2BETA) + tmp - ec-=
>rx_2;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  321
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  322                /*
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  323                 * hard limit filter to prevent clipping.  Note that=
 at this
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  324                 * stage rx should be limited to +/- 16383 due to ri=
ght shift
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  325                 * above
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  326                 */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  327                tmp1 =3D ec->rx_1 >> 15;
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  328                if (tmp1 > 16383)
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  329                        tmp1 =3D 16383;
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  330                if (tmp1 < -16383)
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  331                        tmp1 =3D -16383;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  332                rx =3D tmp1;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  333                ec->rx_2 =3D tmp;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  334        }
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  335
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  336        /* Block average of power in the filter states.  Used for
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  337           adaption power calculation. */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  338
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  339        {
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  340                int new, old;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  341
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  342                /* efficient "out with the old and in with the new" =
algorithm so
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  343                   we don't have to recalculate over the whole block=
 of
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  344                   samples. */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  345                new =3D (int)tx * (int)tx;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  346                old =3D (int)ec->fir_state.history[ec->fir_state.cur=
r_pos] *
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  347                    (int)ec->fir_state.history[ec->fir_state.curr_po=
s];
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  348                ec->pstates +=3D
> > 0f51010e87636e drivers/staging/echo/echo.c David Rowe          2009-05-=
20  349                    ((new - old) + (1 << (ec->log2taps - 1))) >> ec-=
>log2taps;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  350                if (ec->pstates < 0)
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  351                        ec->pstates =3D 0;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  352        }
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  353
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  354        /* Calculate short term average levels using simple single p=
ole IIRs */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  355
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  356        ec->ltxacc +=3D abs(tx) - ec->ltx;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  357        ec->ltx =3D (ec->ltxacc + (1 << 4)) >> 5;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  358        ec->lrxacc +=3D abs(rx) - ec->lrx;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  359        ec->lrx =3D (ec->lrxacc + (1 << 4)) >> 5;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  360
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  361        /* Foreground filter */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  362
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  363        ec->fir_state.coeffs =3D ec->fir_taps16[0];
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  364        echo_value =3D fir16(&ec->fir_state, tx);
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  365        ec->clean =3D rx - echo_value;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  366        ec->lcleanacc +=3D abs(ec->clean) - ec->lclean;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  367        ec->lclean =3D (ec->lcleanacc + (1 << 4)) >> 5;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  368
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  369        /* Background filter */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  370
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  371        echo_value =3D fir16(&ec->fir_state_bg, tx);
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  372        clean_bg =3D rx - echo_value;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  373        ec->lclean_bgacc +=3D abs(clean_bg) - ec->lclean_bg;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  374        ec->lclean_bg =3D (ec->lclean_bgacc + (1 << 4)) >> 5;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  375
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  376        /* Background Filter adaption */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  377
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  378        /* Almost always adap bg filter, just simple DT and energy
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  379           detection to minimise adaption in cases of strong double =
talk.
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  380           However this is not critical for the dual path algorithm.
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  381         */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  382        ec->factor =3D 0;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  383        ec->shift =3D 0;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06 @384        if ((ec->nonupdate_dwell =3D=3D 0)) {
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  385                int p, logp, shift;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  386
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  387                /* Determine:
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  388
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  389                   f =3D Beta * clean_bg_rx/P ------ (1)
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  390
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  391                   where P is the total power in the filter states.
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  392
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  393                   The Boffins have shown that if we obey (1) we con=
verge
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  394                   quickly and avoid instability.
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  395
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  396                   The correct factor f must be in Q30, as this is t=
he fixed
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  397                   point format required by the lms_adapt_bg() funct=
ion,
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  398                   therefore the scaled version of (1) is:
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  399
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  400                   (2^30) * f  =3D (2^30) * Beta * clean_bg_rx/P
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  401                   factor      =3D (2^30) * Beta * clean_bg_rx/P    =
 ----- (2)
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  402
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  403                   We have chosen Beta =3D 0.25 by experiment, so:
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  404
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  405                   factor      =3D (2^30) * (2^-2) * clean_bg_rx/P
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  406
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  407                   (30 - 2 - log2(P))
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  408                   factor      =3D clean_bg_rx 2                    =
 ----- (3)
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  409
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  410                   To avoid a divide we approximate log2(P) as top_b=
it(P),
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  411                   which returns the position of the highest non-zer=
o bit in
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  412                   P.  This approximation introduces an error as lar=
ge as a
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  413                   factor of 2, but the algorithm seems to handle it=
 OK.
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  414
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  415                   Come to think of it a divide may not be a big dea=
l on a
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  416                   modern DSP, so its probably worth checking out th=
e cycles
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  417                   for a divide versus a top_bit() implementation.
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  418                 */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  419
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  420                p =3D MIN_TX_POWER_FOR_ADAPTION + ec->pstates;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  421                logp =3D top_bit(p) + ec->log2taps;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  422                shift =3D 30 - 2 - logp;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  423                ec->shift =3D shift;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  424
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  425                lms_adapt_bg(ec, clean_bg, shift);
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  426        }
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  427
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  428        /* very simple DTD to make sure we dont try and adapt with s=
trong
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  429           near end speech */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  430
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  431        ec->adapt =3D 0;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  432        if ((ec->lrx > MIN_RX_POWER_FOR_ADAPTION) && (ec->lrx > ec->=
ltx))
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  433                ec->nonupdate_dwell =3D DTD_HANGOVER;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  434        if (ec->nonupdate_dwell)
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  435                ec->nonupdate_dwell--;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  436
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  437        /* Transfer logic */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  438
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  439        /* These conditions are from the dual path paper [1], I mess=
ed with
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  440           them a bit to improve performance. */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  441
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  442        if ((ec->adaption_mode & ECHO_CAN_USE_ADAPTION) &&
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  443            (ec->nonupdate_dwell =3D=3D 0) &&
> > dc57a3ea80a85a drivers/staging/echo/echo.c Alexander Beregalov 2009-03-=
12  444            /* (ec->Lclean_bg < 0.875*ec->Lclean) */
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  445            (8 * ec->lclean_bg < 7 * ec->lclean) &&
> > dc57a3ea80a85a drivers/staging/echo/echo.c Alexander Beregalov 2009-03-=
12  446            /* (ec->Lclean_bg < 0.125*ec->Ltx) */
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  447            (8 * ec->lclean_bg < ec->ltx)) {
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  448                if (ec->cond_met =3D=3D 6) {
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  449                        /*
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  450                         * BG filter has had better results for 6 co=
nsecutive
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  451                         * samples
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  452                         */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  453                        ec->adapt =3D 1;
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  454                        memcpy(ec->fir_taps16[0], ec->fir_taps16[1],
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  455                               ec->taps * sizeof(int16_t));
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  456                } else
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  457                        ec->cond_met++;
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  458        } else
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  459                ec->cond_met =3D 0;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  460
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  461        /* Non-Linear Processing */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  462
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  463        ec->clean_nlp =3D ec->clean;
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  464        if (ec->adaption_mode & ECHO_CAN_USE_NLP) {
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  465                /*
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  466                 * Non-linear processor - a fancy way to say "zap sm=
all
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  467                 * signals, to avoid residual echo due to (uLaw/ALaw=
)
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  468                 * non-linearity in the channel.".
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  469                 */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  470
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  471                if ((16 * ec->lclean < ec->ltx)) {
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  472                        /*
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  473                         * Our e/c has improved echo by at least 24 =
dB (each
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  474                         * factor of 2 is 6dB, so 2*2*2*2=3D16 is th=
e same as
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  475                         * 6+6+6+6=3D24dB)
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  476                         */
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  477                        if (ec->adaption_mode & ECHO_CAN_USE_CNG) {
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  478                                ec->cng_level =3D ec->lbgn;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  479
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  480                                /*
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  481                                 * Very elementary comfort noise gen=
eration.
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  482                                 * Just random numbers rolled off ve=
ry vaguely
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  483                                 * Hoth-like.  DR: This noise doesn'=
t sound
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  484                                 * quite right to me - I suspect the=
re are some
> > 83aa3c7bf3f04a drivers/staging/echo/echo.c Jonathan Neusch=C3=A4fer 201=
1-03-01  485                                 * overflow issues in the filte=
ring as it's too
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  486                                 * "crackly".
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  487                                 * TODO: debug this, maybe just play=
 noise at
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  488                                 * high level or look at spectrum.
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  489                                 */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  490
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  491                                ec->cng_rndnum =3D
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  492                                    1664525U * ec->cng_rndnum + 1013=
904223U;
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  493                                ec->cng_filter =3D
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  494                                    ((ec->cng_rndnum & 0xFFFF) - 327=
68 +
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  495                                     5 * ec->cng_filter) >> 3;
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  496                                ec->clean_nlp =3D
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  497                                    (ec->cng_filter * ec->cng_level =
* 8) >> 14;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  498
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  499                        } else if (ec->adaption_mode & ECHO_CAN_USE_=
CLIP) {
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  500                                /* This sounds much better than CNG =
*/
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  501                                if (ec->clean_nlp > ec->lbgn)
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  502                                        ec->clean_nlp =3D ec->lbgn;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  503                                if (ec->clean_nlp < -ec->lbgn)
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  504                                        ec->clean_nlp =3D -ec->lbgn;
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  505                        } else {
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  506                                /*
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  507                                 * just mute the residual, doesn't s=
ound very
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  508                                 * good, used mainly in G168 tests
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  509                                 */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  510                                ec->clean_nlp =3D 0;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  511                        }
> > 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-=
20  512                } else {
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  513                        /*
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  514                         * Background noise estimator.  I tried a fe=
w
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  515                         * algorithms here without much luck.  This =
very simple
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  516                         * one seems to work best, we just average t=
he level
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  517                         * using a slow (1 sec time const) filter if=
 the
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  518                         * current level is less than a (experimenta=
lly
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  519                         * derived) constant.  This means we dont in=
clude high
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  520                         * level signals like near end speech.  When=
 combined
> > 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-=
10  521                         * with CNG or especially CLIP seems to work=
 OK.
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  522                         */
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  523                        if (ec->lclean < 40) {
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  524                                ec->lbgn_acc +=3D abs(ec->clean) - e=
c->lbgn;
> > 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-=
05  525                                ec->lbgn =3D (ec->lbgn_acc + (1 << 1=
1)) >> 12;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  526                        }
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  527                }
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  528        }
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  529
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  530        /* Roll around the taps buffer */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  531        if (ec->curr_pos <=3D 0)
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  532                ec->curr_pos =3D ec->taps;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  533        ec->curr_pos--;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  534
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  535        if (ec->adaption_mode & ECHO_CAN_DISABLE)
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  536                ec->clean_nlp =3D rx;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  537
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  538        /* Output scaled back up again to match input scaling */
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  539
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  540        return (int16_t) ec->clean_nlp << 1;
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  541  }
> > 9d8f2d5dfbcc9d drivers/staging/echo/echo.c Tzafrir Cohen       2008-10-=
12  542  EXPORT_SYMBOL_GPL(oslec_update);
> > 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-=
06  543
> >
> > :::::: The code at line 384 was first introduced by commit
> > :::::: 10602db812fa270fc923f5e48fb47202288828f3 Staging: add echo cance=
lation module
> >
> > :::::: TO: David Rowe <david@rowetel.com>
> > :::::: CC: Greg Kroah-Hartman <gregkh@suse.de>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
>
> Cheers,
> Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CABXOdTd-TSKR%2Bx4ALQXAD9VGxd4sQCCVC9hzdGamyUr-ndBJ%2Bw%4=
0mail.gmail.com.
