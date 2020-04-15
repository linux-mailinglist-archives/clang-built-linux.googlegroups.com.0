Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLVJ3H2AKGQETN4SDWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 412191A8FB5
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 02:26:25 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id n89sf14165887qte.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 17:26:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586910384; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wu2NlIeCiv0M+AU3nQduEYHWLeGGxhW+LPDPmYcnkPBJb5yytpHarCMJHpEYT/OkxY
         Evnrbt2nqN97wWVFIICSKytyQ7YH2xshM+15zb3DwRwJyMBYtihX54fcxWMTcPpW0eze
         bi46FV+Gd8hVWiSm5iTqTdH7UX/6tSc4Q5pSB26FTGKLZx7uhtONm8T2h4tXHVfrmaXU
         EBBE9iZTwMAP+yabUg346W/ALRySEKH000+N7iJZHeJI5Hrq8jy8QF5+mGcxSkds96/R
         cfcaU1oaigehFaGwC5YG8097gCGni6EEJaoFFpjbSxwy0ufmuq8OZLnV/lvZzT0ioIDv
         tCYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=4Xx0AcAlosPWCpT+LgcGaGBRtxOK3GkRMxpQWa1OkFA=;
        b=D/IXN8+1S9fSI16r8g0IXOJbFO0DRrtob2ho7D9yYjgvoJZ9dYcm7WqSsIrJz3fAGT
         EiRLdWKOtoiWsqa/pTKPL9HNsL3Oi9WXZa2pU90ZCJLpzJUNbaxy+9cctcN7Nwi0m1sG
         Z3Z/0q5almB8zwd2Fw4CQjxPTJWVUD+4PKF9XhyI6ZA4CCftoXJjKdCMxVHUp9osYG9u
         WFcCVGK2lq86SRrjJ4p1XOo9+D5aERXLCnViWAclqbG+/nPl1Rvg9K3cLHKnnWT5bI9e
         XS1RjR0rURz2F75CVIak57GcYI+onrbUCZ/LVBySAI3rwkPUSPvioAOfq/wD/sPuNaHz
         bPow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="B/Ea68Lo";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Xx0AcAlosPWCpT+LgcGaGBRtxOK3GkRMxpQWa1OkFA=;
        b=g8GJMRI7FfQauxUfGj4w9Fk1hkP8q7i+omTqCXgiJ+A5HJ7V1Qls6QEt3nzrxy4Viv
         UXeUsGk6RbpgwRdUuHAcFqYt5EeyXmoFLJYIlomvvzqeuHNi7/issdd94PxA5hnsOg5z
         ctJ9mj5hNRSPYD0XbWBpMqg8Tg0e2kbhVCmO0lgDRXwHX4GutF52KV6s3Pv4GfDO/0gW
         ea475kyKIpt5sj7Rcqpx8+fmXKyZatI/l+9E3F0oFOY7ZezpUFe+uRgo2IGEe+8cyCjl
         N9fXVYyiBWDeJ4jue+9YahTu7rv+yBiJEgH1HZwz9H8u7xH1xcworIidQk5VpSVTtaRO
         dTYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Xx0AcAlosPWCpT+LgcGaGBRtxOK3GkRMxpQWa1OkFA=;
        b=Yk/Q1xjuqJ2LAAdOufG3jGotdeDsFcYiXyp9lcxd2e5XEPY8/wrnIIFIZGrN2y+kmO
         IsCkdX4I1yk0liN+fYUOwEfynM4EkJ7s7vWOib4R3ROJ3cyRV1vSRm0lTb7pBdOPA5aM
         kz//NFgzasoO+AvB5FOYyiYEAdi46xDxk2bv8TnaHxX5DecEXdb8w49vfdK0Q1YVNz24
         DmUChsxf/Z/OIRrOG7O9u8ViGru7f/ihNCoCoUKKrq+AzzSpwa2atizTqeILxlPrKjsf
         ltS2FPVLNPCUUp4Wtnw12OcAtdqA4srA8dZRYnRjWMSZn4UGRh5+GbMDpCEBT1jct2T7
         X+Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Xx0AcAlosPWCpT+LgcGaGBRtxOK3GkRMxpQWa1OkFA=;
        b=I81CX/pAqe+cCG5BWk+GliHiNFj6RKot7QlbXwRPXm5cG49aOU2uMRWKZ4Nk/kR71z
         Yn7z6ZfsVDt7Wa/5/cTTcRkt/d8E4FGnE/Wao4zH9Wku4ArQH6hy9rULgu2VlqPrflIs
         gYeNoSxO910kC06F2UVQ0lFItmIwiY4y9ECVjLSzCQ/iwdbvOJ1PYYqGwoeJTkJm5qHb
         YiAvOeMFQYXSA1I/C4RbkRJQq5x8Zl+diPrBGuMRHD5glcdp4+FTFQ4poVTBB0kj25K1
         stN0Y0A8DCfhlSVIn6/fRp9JJmTe/BXKTmUjA+B2A8xR+sATUTDUtiVNZt+xp1ZKC+2t
         /5MQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaHN666u+uX7bpGybylk2MKpej2rcDdIp2wdE6NN9hGdplqa+ky
	hxzsdqwDAZwFQ5jjjywhuME=
X-Google-Smtp-Source: APiQypJQPV+1l1DcJGHG+vsflM2RlI5bjrzuwdExYJeJ7lrmAycjWSfInFbd6IThOEpieDpr5t2Vag==
X-Received: by 2002:a37:aa8e:: with SMTP id t136mr15236891qke.175.1586910382592;
        Tue, 14 Apr 2020 17:26:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a391:: with SMTP id m139ls3570786qke.10.gmail; Tue, 14
 Apr 2020 17:26:22 -0700 (PDT)
X-Received: by 2002:a37:67c4:: with SMTP id b187mr1797943qkc.296.1586910382093;
        Tue, 14 Apr 2020 17:26:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586910382; cv=none;
        d=google.com; s=arc-20160816;
        b=j0VysWObWkcItVTbArgPlZmDZeqAi0TiZKrtm3nniQGswJM5U6MOqKsPBlMtuvTJMC
         bnn6al5YXnVOefW3tOoPG/gbeXaYg+l0ed5I1G5VHCon9vtW6ZPzDPAQP/599SXUrr++
         hbJmla9xSq5NxXbaeuDpIpwI/AUrHHLhisby22qLSYluKNAUt6QI5joJigdXDmE81K8a
         VF6/vxI3ZwWAYfiKYEB+JWDzHvqwEnbq7V37H7tiPkguhIfDAVb8oJS9D/X07YIl3vA+
         aWgJUh/s6OS6A0Ncivd8HgkIriNkP5FdkLj2LMwjmTwcJxvwUoAJXgjxF+Ug5sCgE95y
         VRwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1mVU8GXg0mN024XLfFdotEHp/TWpLmEmbeomq6fbkiM=;
        b=g9l3piigw1VCmL9OcdXnwu437vujr0XRmmV0/LWU2U1Su9ldonUHhb1fo24EjgPURx
         uZaOebDGAYGrTYs0S6VhidkYIapHSRFHOfopnw2mn4fagTVlf0cjyVDvbN0Q0n2hQ9xM
         9jUT2RCI7xe59dcnP05Drem0pf1hO5nlVLD1QWIs8roUGwe3Z6fsw9vBUkoh04++CSfu
         sJW+XWDNknSvT9E5DIpZwF0g+5DssjOHJjpqk87kcCpXrhvkDJGfP3l7V3kjDErvxA7q
         dPgV8H6+fkGC7OwMWRnT49lkNvCYdCmEOPuqqSeEB8Y7TdGfVidIDTbOLSnQi4OVY69a
         ptyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="B/Ea68Lo";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id z126si854135qkd.2.2020.04.14.17.26.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 17:26:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id i27so1674986ota.7;
        Tue, 14 Apr 2020 17:26:22 -0700 (PDT)
X-Received: by 2002:a9d:7d91:: with SMTP id j17mr2852673otn.342.1586910381097;
        Tue, 14 Apr 2020 17:26:21 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id k64sm5928193oia.57.2020.04.14.17.26.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 Apr 2020 17:26:20 -0700 (PDT)
Date: Tue, 14 Apr 2020 17:26:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: cros-kernel-buildreports@googlegroups.com,
	Guenter Roeck <groeck@google.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [chrome-os:chromeos-4.19 21350/21402]
 drivers/misc/echo/echo.c:384:27: error: equality comparison with extraneous
 parentheses
Message-ID: <20200415002618.GB19509@ubuntu-s3-xlarge-x86>
References: <202004150637.9F62YI28%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202004150637.9F62YI28%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="B/Ea68Lo";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

Sorry for yet another convergeance on this commit... :/ hopefully this
does not continue for much longer. None of the warnings are obviously
caused by the patch below.

On Wed, Apr 15, 2020 at 06:09:47AM +0800, kbuild test robot wrote:
> tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel c=
hromeos-4.19
> head:   e747fc8dfce13c501be9b7032a5a3d8249bc27ab
> commit: 12bd892cc0bd4a700dd41aa4b0d1e0cfc128e3e4 [21350/21402] CHROMIUM: =
Merge 'v4.19.114' into chromeos-4.19
> config: x86_64-randconfig-c002-20200414 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f3da=
6b7ab5698bb0b9bd208972115dbcbbc59f27)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 12bd892cc0bd4a700dd41aa4b0d1e0cfc128e3e4
>         # save the attached .config to linux build tree
>         COMPILER=3Dclang make.cross ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
> >> drivers/misc/echo/echo.c:384:27: error: equality comparison with extra=
neous parentheses [-Werror,-Wparentheses-equality]
>            if ((ec->nonupdate_dwell =3D=3D 0)) {
>                 ~~~~~~~~~~~~~~~~~~~~^~~~
>    drivers/misc/echo/echo.c:384:27: note: remove extraneous parentheses a=
round the comparison to silence this warning
>            if ((ec->nonupdate_dwell =3D=3D 0)) {
>                ~                    ^   ~
>    drivers/misc/echo/echo.c:384:27: note: use '=3D' to turn this equality=
 comparison into an assignment
>            if ((ec->nonupdate_dwell =3D=3D 0)) {
>                                     ^~
>                                     =3D
>    1 error generated.

Fixed by commit 85dc2c65e6c9 ("misc: echo: Remove unnecessary
parentheses and simplify check for zero").

> >> net/decnet/dn_dev.c:1366:10: error: address of array 'dev->name' will =
always evaluate to 'true' [-Werror,-Wpointer-bool-conversion]
>                                    dev->name ? dev->name : "???",
>                                    ~~~~~^~~~ ~
>    1 error generated.

Fixed by commit 5b9b0a80aa1a ("decnet: Remove unnecessary check for
dev->name").

> >> drivers/regulator/da903x.c:395:2: error: division by zero is undefined=
 [-Werror,-Wdivision-by-zero]
>            DA9030_LDO(13, 2100, 2100, 0, INVAL, 0, 0, RCTL11, 3), /* fixe=
d @2.1V */
>            ^                          ~
>    drivers/regulator/da903x.c:359:2: note: expanded from macro 'DA9030_LD=
O'
>            DA903x_LDO(DA9030, _id, min, max, step, vreg, shift, nbits, er=
eg, ebit)
>            ^                                 ~~~~
>    drivers/regulator/da903x.c:320:39: note: expanded from macro 'DA903x_L=
DO'
>                    .n_voltages =3D (step) ? ((max - min) / step + 1) : 1,=
    \
>                                                        ^ ~~~~
>    drivers/regulator/da903x.c:415:2: error: division by zero is undefined=
 [-Werror,-Wdivision-by-zero]
>            DA9034_LDO(5, 3100, 3100, 0, INVAL, 0, 0, OVER3, 7), /* fixed =
@3.1V */
>            ^                         ~
>    drivers/regulator/da903x.c:356:2: note: expanded from macro 'DA9034_LD=
O'
>            DA903x_LDO(DA9034, _id, min, max, step, vreg, shift, nbits, er=
eg, ebit)
>            ^                                 ~~~~
>    drivers/regulator/da903x.c:320:39: note: expanded from macro 'DA903x_L=
DO'
>                    .n_voltages =3D (step) ? ((max - min) / step + 1) : 1,=
    \
>                                                        ^ ~~~~
>    2 errors generated.

"Fixed" by commit 0077aaaeeb69 ("regulator: da903x: don't build with
clang"). I do not think the Clang fix ever got finalized.

>    In file included from drivers/scsi/osd/osd_uld.c:60:
>    In file included from include/scsi/osd_initiator.h:18:
> >> include/scsi/osd_types.h:31:21: error: 'weak' attribute only applies t=
o variables, functions, and classes [-Werror,-Wignored-attributes]
>    static const struct __weak osd_obj_id osd_root_object =3D {0, 0};
>                        ^
>    include/linux/compiler_types.h:219:33: note: expanded from macro '__we=
ak'
>    #define __weak                  __attribute__((weak))
>                                                   ^
>    1 error generated.

"Fixed" by just deleting the driver in commit 19fcae3d4f2d ("scsi:
remove the SCSI OSD library"). I did send a patch to fix it which
spurred the deletion, if we wanted to take it in stable if we care:

https://lore.kernel.org/lkml/20190126064740.12949-1-natechancellor@gmail.co=
m/

> vim +384 drivers/misc/echo/echo.c
>=20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  273 =20
> 9d8f2d5dfbcc9d drivers/staging/echo/echo.c Tzafrir Cohen       2008-10-12=
  274  int16_t oslec_update(struct oslec_state *ec, int16_t tx, int16_t rx)
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  275  {
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  276  	int32_t echo_value;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  277  	int clean_bg;
> 3ec50be588d773 drivers/staging/echo/echo.c Jesper Juhl         2012-06-27=
  278  	int tmp;
> 3ec50be588d773 drivers/staging/echo/echo.c Jesper Juhl         2012-06-27=
  279  	int tmp1;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  280 =20
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  281  	/*
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  282  	 * Input scaling was found be required to prevent problems when tx
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  283  	 * starts clipping.  Another possible way to handle this would be t=
he
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  284  	 * filter coefficent scaling.
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  285  	 */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  286 =20
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  287  	ec->tx =3D tx;
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  288  	ec->rx =3D rx;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  289  	tx >>=3D 1;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  290  	rx >>=3D 1;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  291 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  292  	/*
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  293  	 * Filter DC, 3dB point is 160Hz (I think), note 32 bit precision
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  294  	 * required otherwise values do not track down to 0. Zero at DC, Po=
le
> 196e76e86a3a90 drivers/staging/echo/echo.c David Rowe          2009-08-23=
  295  	 * at (1-Beta) on real axis.  Some chip sets (like Si labs) don't
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  296  	 * need this, but something like a $10 X100P card does.  Any DC rea=
lly
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  297  	 * slows down convergence.
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  298  	 *
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  299  	 * Note: removes some low frequency from the signal, this reduces t=
he
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  300  	 * speech quality when listening to samples through headphones but =
may
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  301  	 * not be obvious through a telephone handset.
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  302  	 *
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  303  	 * Note that the 3dB frequency in radians is approx Beta, e.g. for =
Beta
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  304  	 * =3D 2^(-3) =3D 0.125, 3dB freq is 0.125 rads =3D 159Hz.
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  305  	 */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  306 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  307  	if (ec->adaption_mode & ECHO_CAN_USE_RX_HPF) {
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  308  		tmp =3D rx << 15;
> 196e76e86a3a90 drivers/staging/echo/echo.c David Rowe          2009-08-23=
  309 =20
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  310  		/*
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  311  		 * Make sure the gain of the HPF is 1.0. This can still
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  312  		 * saturate a little under impulse conditions, and it might
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  313  		 * roll to 32768 and need clipping on sustained peak level
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  314  		 * signals. However, the scale of such clipping is small, and
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  315  		 * the error due to any saturation should not markedly affect
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  316  		 * the downstream processing.
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  317  		 */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  318  		tmp -=3D (tmp >> 4);
> 196e76e86a3a90 drivers/staging/echo/echo.c David Rowe          2009-08-23=
  319 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  320  		ec->rx_1 +=3D -(ec->rx_1 >> DC_LOG2BETA) + tmp - ec->rx_2;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  321 =20
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  322  		/*
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  323  		 * hard limit filter to prevent clipping.  Note that at this
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  324  		 * stage rx should be limited to +/- 16383 due to right shift
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  325  		 * above
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  326  		 */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  327  		tmp1 =3D ec->rx_1 >> 15;
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  328  		if (tmp1 > 16383)
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  329  			tmp1 =3D 16383;
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  330  		if (tmp1 < -16383)
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  331  			tmp1 =3D -16383;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  332  		rx =3D tmp1;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  333  		ec->rx_2 =3D tmp;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  334  	}
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  335 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  336  	/* Block average of power in the filter states.  Used for
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  337  	   adaption power calculation. */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  338 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  339  	{
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  340  		int new, old;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  341 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  342  		/* efficient "out with the old and in with the new" algorithm so
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  343  		   we don't have to recalculate over the whole block of
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  344  		   samples. */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  345  		new =3D (int)tx * (int)tx;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  346  		old =3D (int)ec->fir_state.history[ec->fir_state.curr_pos] *
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  347  		    (int)ec->fir_state.history[ec->fir_state.curr_pos];
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  348  		ec->pstates +=3D
> 0f51010e87636e drivers/staging/echo/echo.c David Rowe          2009-05-20=
  349  		    ((new - old) + (1 << (ec->log2taps - 1))) >> ec->log2taps;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  350  		if (ec->pstates < 0)
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  351  			ec->pstates =3D 0;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  352  	}
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  353 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  354  	/* Calculate short term average levels using simple single pole IIR=
s */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  355 =20
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  356  	ec->ltxacc +=3D abs(tx) - ec->ltx;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  357  	ec->ltx =3D (ec->ltxacc + (1 << 4)) >> 5;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  358  	ec->lrxacc +=3D abs(rx) - ec->lrx;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  359  	ec->lrx =3D (ec->lrxacc + (1 << 4)) >> 5;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  360 =20
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  361  	/* Foreground filter */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  362 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  363  	ec->fir_state.coeffs =3D ec->fir_taps16[0];
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  364  	echo_value =3D fir16(&ec->fir_state, tx);
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  365  	ec->clean =3D rx - echo_value;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  366  	ec->lcleanacc +=3D abs(ec->clean) - ec->lclean;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  367  	ec->lclean =3D (ec->lcleanacc + (1 << 4)) >> 5;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  368 =20
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  369  	/* Background filter */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  370 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  371  	echo_value =3D fir16(&ec->fir_state_bg, tx);
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  372  	clean_bg =3D rx - echo_value;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  373  	ec->lclean_bgacc +=3D abs(clean_bg) - ec->lclean_bg;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  374  	ec->lclean_bg =3D (ec->lclean_bgacc + (1 << 4)) >> 5;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  375 =20
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  376  	/* Background Filter adaption */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  377 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  378  	/* Almost always adap bg filter, just simple DT and energy
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  379  	   detection to minimise adaption in cases of strong double talk.
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  380  	   However this is not critical for the dual path algorithm.
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  381  	 */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  382  	ec->factor =3D 0;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  383  	ec->shift =3D 0;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
 @384  	if ((ec->nonupdate_dwell =3D=3D 0)) {
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  385  		int p, logp, shift;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  386 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  387  		/* Determine:
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  388 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  389  		   f =3D Beta * clean_bg_rx/P ------ (1)
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  390 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  391  		   where P is the total power in the filter states.
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  392 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  393  		   The Boffins have shown that if we obey (1) we converge
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  394  		   quickly and avoid instability.
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  395 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  396  		   The correct factor f must be in Q30, as this is the fixed
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  397  		   point format required by the lms_adapt_bg() function,
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  398  		   therefore the scaled version of (1) is:
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  399 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  400  		   (2^30) * f  =3D (2^30) * Beta * clean_bg_rx/P
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  401  		   factor      =3D (2^30) * Beta * clean_bg_rx/P     ----- (2)
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  402 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  403  		   We have chosen Beta =3D 0.25 by experiment, so:
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  404 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  405  		   factor      =3D (2^30) * (2^-2) * clean_bg_rx/P
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  406 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  407  		   (30 - 2 - log2(P))
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  408  		   factor      =3D clean_bg_rx 2                     ----- (3)
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  409 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  410  		   To avoid a divide we approximate log2(P) as top_bit(P),
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  411  		   which returns the position of the highest non-zero bit in
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  412  		   P.  This approximation introduces an error as large as a
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  413  		   factor of 2, but the algorithm seems to handle it OK.
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  414 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  415  		   Come to think of it a divide may not be a big deal on a
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  416  		   modern DSP, so its probably worth checking out the cycles
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  417  		   for a divide versus a top_bit() implementation.
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  418  		 */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  419 =20
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  420  		p =3D MIN_TX_POWER_FOR_ADAPTION + ec->pstates;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  421  		logp =3D top_bit(p) + ec->log2taps;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  422  		shift =3D 30 - 2 - logp;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  423  		ec->shift =3D shift;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  424 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  425  		lms_adapt_bg(ec, clean_bg, shift);
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  426  	}
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  427 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  428  	/* very simple DTD to make sure we dont try and adapt with strong
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  429  	   near end speech */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  430 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  431  	ec->adapt =3D 0;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  432  	if ((ec->lrx > MIN_RX_POWER_FOR_ADAPTION) && (ec->lrx > ec->ltx))
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  433  		ec->nonupdate_dwell =3D DTD_HANGOVER;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  434  	if (ec->nonupdate_dwell)
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  435  		ec->nonupdate_dwell--;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  436 =20
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  437  	/* Transfer logic */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  438 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  439  	/* These conditions are from the dual path paper [1], I messed with
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  440  	   them a bit to improve performance. */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  441 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  442  	if ((ec->adaption_mode & ECHO_CAN_USE_ADAPTION) &&
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  443  	    (ec->nonupdate_dwell =3D=3D 0) &&
> dc57a3ea80a85a drivers/staging/echo/echo.c Alexander Beregalov 2009-03-12=
  444  	    /* (ec->Lclean_bg < 0.875*ec->Lclean) */
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  445  	    (8 * ec->lclean_bg < 7 * ec->lclean) &&
> dc57a3ea80a85a drivers/staging/echo/echo.c Alexander Beregalov 2009-03-12=
  446  	    /* (ec->Lclean_bg < 0.125*ec->Ltx) */
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  447  	    (8 * ec->lclean_bg < ec->ltx)) {
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  448  		if (ec->cond_met =3D=3D 6) {
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  449  			/*
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  450  			 * BG filter has had better results for 6 consecutive
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  451  			 * samples
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  452  			 */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  453  			ec->adapt =3D 1;
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  454  			memcpy(ec->fir_taps16[0], ec->fir_taps16[1],
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  455  			       ec->taps * sizeof(int16_t));
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  456  		} else
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  457  			ec->cond_met++;
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  458  	} else
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  459  		ec->cond_met =3D 0;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  460 =20
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  461  	/* Non-Linear Processing */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  462 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  463  	ec->clean_nlp =3D ec->clean;
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  464  	if (ec->adaption_mode & ECHO_CAN_USE_NLP) {
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  465  		/*
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  466  		 * Non-linear processor - a fancy way to say "zap small
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  467  		 * signals, to avoid residual echo due to (uLaw/ALaw)
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  468  		 * non-linearity in the channel.".
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  469  		 */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  470 =20
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  471  		if ((16 * ec->lclean < ec->ltx)) {
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  472  			/*
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  473  			 * Our e/c has improved echo by at least 24 dB (each
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  474  			 * factor of 2 is 6dB, so 2*2*2*2=3D16 is the same as
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  475  			 * 6+6+6+6=3D24dB)
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  476  			 */
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  477  			if (ec->adaption_mode & ECHO_CAN_USE_CNG) {
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  478  				ec->cng_level =3D ec->lbgn;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  479 =20
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  480  				/*
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  481  				 * Very elementary comfort noise generation.
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  482  				 * Just random numbers rolled off very vaguely
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  483  				 * Hoth-like.  DR: This noise doesn't sound
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  484  				 * quite right to me - I suspect there are some
> 83aa3c7bf3f04a drivers/staging/echo/echo.c Jonathan Neusch=C3=A4fer 2011-=
03-01  485  				 * overflow issues in the filtering as it's too
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  486  				 * "crackly".
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  487  				 * TODO: debug this, maybe just play noise at
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  488  				 * high level or look at spectrum.
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  489  				 */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  490 =20
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  491  				ec->cng_rndnum =3D
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  492  				    1664525U * ec->cng_rndnum + 1013904223U;
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  493  				ec->cng_filter =3D
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  494  				    ((ec->cng_rndnum & 0xFFFF) - 32768 +
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  495  				     5 * ec->cng_filter) >> 3;
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  496  				ec->clean_nlp =3D
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  497  				    (ec->cng_filter * ec->cng_level * 8) >> 14;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  498 =20
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  499  			} else if (ec->adaption_mode & ECHO_CAN_USE_CLIP) {
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  500  				/* This sounds much better than CNG */
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  501  				if (ec->clean_nlp > ec->lbgn)
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  502  					ec->clean_nlp =3D ec->lbgn;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  503  				if (ec->clean_nlp < -ec->lbgn)
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  504  					ec->clean_nlp =3D -ec->lbgn;
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  505  			} else {
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  506  				/*
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  507  				 * just mute the residual, doesn't sound very
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  508  				 * good, used mainly in G168 tests
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  509  				 */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  510  				ec->clean_nlp =3D 0;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  511  			}
> 4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20=
  512  		} else {
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  513  			/*
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  514  			 * Background noise estimator.  I tried a few
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  515  			 * algorithms here without much luck.  This very simple
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  516  			 * one seems to work best, we just average the level
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  517  			 * using a slow (1 sec time const) filter if the
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  518  			 * current level is less than a (experimentally
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  519  			 * derived) constant.  This means we dont include high
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  520  			 * level signals like near end speech.  When combined
> 49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10=
  521  			 * with CNG or especially CLIP seems to work OK.
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  522  			 */
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  523  			if (ec->lclean < 40) {
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  524  				ec->lbgn_acc +=3D abs(ec->clean) - ec->lbgn;
> 0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05=
  525  				ec->lbgn =3D (ec->lbgn_acc + (1 << 11)) >> 12;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  526  			}
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  527  		}
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  528  	}
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  529 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  530  	/* Roll around the taps buffer */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  531  	if (ec->curr_pos <=3D 0)
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  532  		ec->curr_pos =3D ec->taps;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  533  	ec->curr_pos--;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  534 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  535  	if (ec->adaption_mode & ECHO_CAN_DISABLE)
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  536  		ec->clean_nlp =3D rx;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  537 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  538  	/* Output scaled back up again to match input scaling */
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  539 =20
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  540  	return (int16_t) ec->clean_nlp << 1;
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  541  }
> 9d8f2d5dfbcc9d drivers/staging/echo/echo.c Tzafrir Cohen       2008-10-12=
  542  EXPORT_SYMBOL_GPL(oslec_update);
> 10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06=
  543 =20
>=20
> :::::: The code at line 384 was first introduced by commit
> :::::: 10602db812fa270fc923f5e48fb47202288828f3 Staging: add echo cancela=
tion module
>=20
> :::::: TO: David Rowe <david@rowetel.com>
> :::::: CC: Greg Kroah-Hartman <gregkh@suse.de>
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200415002618.GB19509%40ubuntu-s3-xlarge-x86.
