Return-Path: <clang-built-linux+bncBD2I5M5JZYDRBF72VGCAMGQED6VBEVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id DA34F36E804
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 11:32:08 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id p14-20020a17090a428eb02900fc9e178ef3sf32826637pjg.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 02:32:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619688727; cv=pass;
        d=google.com; s=arc-20160816;
        b=i7b0EfvWPNBEfgyg+jPg6X32HkqD1tC3bYrc6/9zxhkUvQs109xXp0Pwyk2cNUA9eh
         Ep+/7uxWqSdNeJD9Kl2S+d3pndCuoaNwO8hTTi931/qX6uDDw+BvGPa+d5+SSLgBT5qd
         pOiPbOU3DQDHkffh1KKIPlW+8IpY4rOcKGcURQK7TdIHBXcM/7TMY41+j3piniYSKYu/
         Uo0WwgzUmyG5pxdauDRObgX4zznFpN7Y4LkgNigIpPXFwXlMgZzKA7iLHUGn/XTANZEY
         KrRrGLgj1Tc8oWLCO2KaaWOF+8DjhG7l7/tT70JSwNjwZa4iuKw5meHL5ZXBnFo7IMOa
         dRVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=o2Du8IykL9qLurqIxGhOe7fNcTda7iBVaXQpu1muKgs=;
        b=07sBf6ZGii9o/Q2yhK8oQAxArYWUo/4QDWWOX3b8rAeWcrHN8G8SZOYd1okdAp09uT
         +YZWrO4lzmnnYBqc+BPcR7XMHP9CQn+C8VtUiNOyFnIxoRxiLyb33M+10LlDiSQvWyCE
         xSUERrwaJCMqAO5MrNU14halc8lZisKYNurV+rhZaMHcyC94BpBzhJg63eCdc/lb+8I4
         FwGszwi7SQoil6DBAot2RNDhG3IEHQ2fWjCAaZZc38BWyFmTfXAc32MOtrSzYFb/R7J7
         +g0S9eLnvXZZfai2rh3XMXyH+UXHf/IC3Pg8KmzRVV0kZlrIP92LBTpcOQ141XNMmXGN
         eSlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrzej.p@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=andrzej.p@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o2Du8IykL9qLurqIxGhOe7fNcTda7iBVaXQpu1muKgs=;
        b=GCi/wSsUg2nQStNsRoGeFbbTd4GywrXVT7t8NOZ/UjkRS9cPdLsr38+Ozs83u9j5Vh
         vndxEUQOe3VdbqV0S6CtJuHdq05j9Tb69iFWHh+gTRBSkdcTeiSx/eqff3mwEHfly24Z
         cazY1Unhn98wwBMsU8q/u6gCKmQ0AWiJoGRXra06eTEe49lRP2ysD01rZJXg8AtHuc26
         e4f9fxadh0cNOJb1rYXBqHACmFfW91s3pFC89yHaK3NcLe1CAMlgtM59pY848oZCeiRX
         RPuTRIJF+j2giCBTb0N1eFpeuihGbV3KP6+ErEUoD6POl1WdXzHwJ/nCRXYSan1DtWJP
         2G9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o2Du8IykL9qLurqIxGhOe7fNcTda7iBVaXQpu1muKgs=;
        b=BySiRLAmz4WM30Knwas6v8a5UIXExTrb9hqurzkc6FyGsdqaS5ykgWqDpdkzWYC1/j
         t+RwW0e/acDMXuY9uAh92HqbBKPRhXQuiM5NY1cMD/AEEHZOOoUJh9JVmraSLU4o2w/R
         W69pfbCnZ6ALgOO/GUVSo6k0VeN/3OKNRsvEDMwpej0EAo5wSFjdBVMnqI0o72Rj8ozD
         qe6/8IREMigplSMR6BowoipWEuOMFAWZ7Dt5gnZbovxJw4YPm+AWDwnMBWWkG1XFAGga
         VPkjc1qounHzS39rx2HgjVJaD+w1ylcOWcF1/EOYbdkSVWpicw3WTwXJLUfUbqu4Ck6I
         eJTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Fb+rsVGCUGDnRxmEnrR1RhEFgrG1fyc7pdfwkf/Glk/qTfQvy
	zJs+P+eabSRpxikhCFNvuDA=
X-Google-Smtp-Source: ABdhPJxlYSqdAi93HjA/CVZunnUh+U2zxe3sqzB8exnad5Fx+jI55VRqOgSGu4USn3XRdXxjDts5eQ==
X-Received: by 2002:aa7:85d7:0:b029:25d:2b00:2c6c with SMTP id z23-20020aa785d70000b029025d2b002c6cmr32372523pfn.3.1619688727566;
        Thu, 29 Apr 2021 02:32:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:88d0:: with SMTP id k16ls997384pff.10.gmail; Thu, 29 Apr
 2021 02:32:07 -0700 (PDT)
X-Received: by 2002:a63:790a:: with SMTP id u10mr31747627pgc.407.1619688726972;
        Thu, 29 Apr 2021 02:32:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619688726; cv=none;
        d=google.com; s=arc-20160816;
        b=Z+MTi9SgwE2etuLDzvMqK9oSVxcTu7WbRiUepYTlzavz+WkBtkzgvTFU+3vVe7Eh2K
         Ks0dAV7iqX8jS3GRNO4BiAR8mCyWwo4o6G7saf4ZsUSBXJdEYiw10nqCpVj+csE1j3hz
         hS8b4TbUFKUxj62fX6s+bUaW1Z3j3hdBuK+HrDGSDzzb+7Bml3QAr8rp+iuEygPipzTc
         yjhtxssO7ihupGKKkV0g0Z3bgPsSB/QXNI1YRVUh0slOmvUnifqoUU3Um3kC/+LVdTol
         8R2sUphHAQ23A7I6vV2msw691n6+Mv1dgJqMZlIj0D+IoTmdIJ4HhwCjfJS5QWxFQXBi
         iEBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=sJTvThC9iOb2Nq10/XB3h/oS+9r2aUui09f23q6PJqE=;
        b=A0zDrIjbIkdx+VcWUZleF7SMnbEEHx5AOHv/q63NTmuQlnOXBKaCsLxg/Mg9fBlkMt
         13OQwxsuN6YNqNRieHY+1y4KHTaUZZ8B6EzTzPH5BShw/vhUUVUukd95NUr+QoWaco/P
         ++qu6zGtPZ0Uf1AoAKTuBvWQ64h8Ex0wz8x3JDv23WWwA+ZoYIY0WMDB64hFRBY4/4JG
         PSQLrXZDbqc9kE7q0sYnIgwLHsLR0X510jQFa2/JSgNdVmTLCBzipUsn8/Lmii8BKWn/
         FkqJvpfWfd8gaK0Pe93D5odR1fB4adYSiJ0LqkcOULcIHFf7aQLr5XMmLAWEMm8p9B/Y
         PZVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrzej.p@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=andrzej.p@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id t3si203939plg.0.2021.04.29.02.32.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 29 Apr 2021 02:32:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrzej.p@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: andrzej.p)
	with ESMTPSA id A4EFA1F42C14
Subject: Re: [RFC 3/3] media: rkvdec: Add the VP9 backend
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
References: <20210421095525.12934-3-andrzej.p@collabora.com>
 <202104290159.hQh8f76Q-lkp@intel.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <de9b606b-5267-5f6b-088b-e76b25b7d62b@collabora.com>
Date: Thu, 29 Apr 2021 11:32:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202104290159.hQh8f76Q-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrzej.p@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrzej.p@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3
 as permitted sender) smtp.mailfrom=andrzej.p@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Hi,

W dniu 28.04.2021 o=C2=A019:47, kernel test robot pisze:
> Hi Andrzej,
>=20
> [FYI, it's a private test report for your RFC patch.]
> [auto build test WARNING on linuxtv-media/master]
> [also build test WARNING on next-20210428]
> [cannot apply to v5.12]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]

Ah, right, didn't use --base. It was rebased on top of media_tree as of the=
 day=20
I sent the series.

Thanks,

Andrzej

>=20
> url:    https://github.com/0day-ci/linux/commits/Andrzej-Pietrasiewicz/me=
dia-rkvdec-Fix-buf_prepare/20210421-175601
> base:   git://linuxtv.org/media_tree.git master
> config: x86_64-randconfig-a003-20210428 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 87fc=
97169e7901dfe56ca0da0d92da0c02d2ef48)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://github.com/0day-ci/linux/commit/df37e41d68d9ab1326f8a5=
a54d001d9a241b4079
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Andrzej-Pietrasiewicz/media-rkv=
dec-Fix-buf_prepare/20210421-175601
>          git checkout df37e41d68d9ab1326f8a5a54d001d9a241b4079
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=
=3D1 ARCH=3Dx86_64
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>>> drivers/staging/media/rkvdec/rkvdec-vp9.c:1357:50: warning: variable 'd=
ec_params' set but not used [-Wunused-but-set-variable]
>             const struct v4l2_ctrl_vp9_frame_decode_params *dec_params;
>                                                             ^
>     drivers/staging/media/rkvdec/rkvdec-vp9.c:1412:50: warning: variable =
'dec_params' set but not used [-Wunused-but-set-variable]
>             const struct v4l2_ctrl_vp9_frame_decode_params *dec_params;
>                                                             ^
>     2 warnings generated.
>=20
>=20
> vim +/dec_params +1357 drivers/staging/media/rkvdec/rkvdec-vp9.c
>=20
>    1353=09
>    1354	static void init_intra_only_probs(struct rkvdec_ctx *ctx,
>    1355					  const struct rkvdec_vp9_run *run)
>    1356	{
>> 1357		const struct v4l2_ctrl_vp9_frame_decode_params *dec_params;
>    1358		struct rkvdec_vp9_ctx *vp9_ctx =3D ctx->priv;
>    1359		struct rkvdec_vp9_priv_tbl *tbl =3D vp9_ctx->priv_tbl.cpu;
>    1360		struct rkvdec_vp9_intra_only_frame_probs *rkprobs;
>    1361		const struct rkvdec_vp9_frame_context *probs;
>    1362		unsigned int i, j, k, m;
>    1363=09
>    1364		rkprobs =3D &tbl->probs.intra_only;
>    1365		dec_params =3D run->decode_params;
>    1366		probs =3D &vp9_ctx->probability_tables;
>    1367=09
>    1368		/*
>    1369		 * intra only 149 x 128 bits ,aligned to 152 x 128 bits coeff re=
lated
>    1370		 * prob 64 x 128 bits
>    1371		 */
>    1372		for (i =3D 0; i < ARRAY_SIZE(probs->coef); i++) {
>    1373			for (j =3D 0; j < ARRAY_SIZE(probs->coef[0]); j++)
>    1374				write_coeff_plane(probs->coef[i][j][0],
>    1375						  rkprobs->coef_intra[i][j]);
>    1376		}
>    1377=09
>    1378		/* intra mode prob  80 x 128 bits */
>    1379		for (i =3D 0; i < ARRAY_SIZE(vp9_kf_y_mode_prob); i++) {
>    1380			u32 byte_count =3D 0;
>    1381			int idx =3D 0;
>    1382=09
>    1383			/* vp9_kf_y_mode_prob */
>    1384			for (j =3D 0; j < ARRAY_SIZE(vp9_kf_y_mode_prob[0]); j++) {
>    1385				for (k =3D 0; k < ARRAY_SIZE(vp9_kf_y_mode_prob[0][0]);
>    1386				     k++) {
>    1387					u8 val =3D vp9_kf_y_mode_prob[i][j][k];
>    1388=09
>    1389					rkprobs->intra_mode[i].y_mode[idx++] =3D val;
>    1390					byte_count++;
>    1391					if (byte_count =3D=3D 27) {
>    1392						byte_count =3D 0;
>    1393						idx +=3D 5;
>    1394					}
>    1395				}
>    1396			}
>    1397=09
>    1398			idx =3D 0;
>    1399			if (i < 4) {
>    1400				for (m =3D 0; m < (i < 3 ? 23 : 21); m++) {
>    1401					const u8 *ptr =3D (const u8 *)kf_uv_mode_prob;
>    1402=09
>    1403					rkprobs->intra_mode[i].uv_mode[idx++] =3D ptr[i * 23 + m];
>    1404				}
>    1405			}
>    1406		}
>    1407	}
>    1408=09
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/de9b606b-5267-5f6b-088b-e76b25b7d62b%40collabora.com.
