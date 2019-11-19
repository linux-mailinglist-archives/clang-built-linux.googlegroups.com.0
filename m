Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBB4YZ3XAKGQEUC56ZUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F14101965
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Nov 2019 07:30:32 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id h15sf11491173otr.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 22:30:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574145031; cv=pass;
        d=google.com; s=arc-20160816;
        b=vPaqQqfg15vOc4Xj9WaNXIRPGkCzbmC9yd3GD0h4LXgRHNi5WsrZaJx/i5N1VWqcrm
         CewE55A31zDaTzvUG5idX67XWC8ksNDdcSrT4zD+28vzB/2dC+bhKKKSA3KaK//VM+Pk
         9hKsV7P5JaEq1gEYAPLsZbuLMtzey8m0yrPeQt/Zp8lIj0H6OPxfWKzh/Fo4gsAgXCTT
         conuk5hXRocSVfcvSju2WKqMu4k9SnWzSBt+fzkfN/rMXF3THYC8HG4S15VjOdAr9YQd
         utnEj34aQzIf9f9tm1KHNkH8Sve5517UtvwOXV/lWS0/xZKXjf8Y4dP7G0vYa4VPk+1d
         AIGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HPqWCax7bO+BK9yULmwDVWqXH1nQFvizXkkICEQuHn8=;
        b=BENAJMsiXLKkhkoKNOVyvZcanFWz8weOUj57Rd9WqvXOtc3Ri6L4cp+f+KuOqX0Toz
         sGVX++0CG6kqBVFrccLCL4qDrlvLZWvy39MUDvZEfv0pLdbl0MOM6m432yXgcStq9ulM
         XVHaqOq2RCmUD85qlSeYaWUFn8kBR+h1oQtF87cWiJkOomIFYwP18bqNmrAbFqOdee7c
         BSNnWHUZjWL0YWAXskBplq9zeZE+lD6VA1RUBbFys5Zf4126UYo212X4Xe/KlvoL9kDe
         SttzNIku4C3oM3cKDXv4chiEmqvmeh2sw54B+lLjX7hh2RDHAoRBe27trJH2XUusGtdC
         7tRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HPqWCax7bO+BK9yULmwDVWqXH1nQFvizXkkICEQuHn8=;
        b=hfnrxXaKvucGofE8HwQeVpAAfXy3PXVyppLjmmyCgBwFgZDpTzGR798ui9Nia/B90U
         avSuP/tY7dGehJL/TkboQiJTffagLVv6qkMI5zy7WS6HI60eNmLwMSISQ5+viFFAgEmZ
         N+OGl6VjRR96F6jO/xppcKZcTd4EApetbGYU6rZZ2A188Gp+mQ8s8mCORh/fehrLPPyf
         LWGx9MZaftHr0nA1iiWQewew6iKzF26P9bZvncc+MUvbRxXzFDXnKhMY0bCF7tVccV1D
         0BYpiWUuwd1LyqnwS+HaF85Jv9snJKpVDrCLS/biIoWL8qC2rEBRqvIO2MDo2kUBYwLZ
         C63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HPqWCax7bO+BK9yULmwDVWqXH1nQFvizXkkICEQuHn8=;
        b=oZMyvo7a/Q+TxFhZBuLr3RKdqcCRENgAaNPUNLVjmhe+U5Cl+xWhnbLyhj+MUT9VQo
         PK4q0ceNmyjiqVkAARUFKu1LUpLebvd4TDFPqadKgAOYqV+QkS4e7iwr1Wa6iH9aA1Of
         GtTt2rMAnMGpRgIkWfBCPtlmkRGcnVLELY7Ogps8nl313BdYLFL7sJw5s6VYkIiRzB13
         VXqR20BnDVhZJh3+/f/Rm3kMmfwyZXl4J2sfqdkbqA2MT6tFMxPCLh0BRzhAJ9YssEjz
         vI91hTK5pZrkW0zmiWXC4jQETjNXW09W7xyqFa5JNgXE0tBDtZfo9a732bYob85mECwc
         iMVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXhTvl5ekzmlcwOg4VIICdzAPgY/CMJx0BMwshVs875xbuABhU3
	uQG6qVq44oShv6xHpXdFbgI=
X-Google-Smtp-Source: APXvYqy9EmGxUxzK9kMegEOXXXZadcOKSFxKvI4ozrpR0Ym0XTiSHMa6hHm/3TgKQBEwkJiL0pHO0A==
X-Received: by 2002:a05:6808:a95:: with SMTP id q21mr2656846oij.77.1574145031413;
        Mon, 18 Nov 2019 22:30:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:72cd:: with SMTP id d13ls4390587otk.6.gmail; Mon, 18 Nov
 2019 22:30:31 -0800 (PST)
X-Received: by 2002:a05:6830:579:: with SMTP id f25mr2571791otc.248.1574145030925;
        Mon, 18 Nov 2019 22:30:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574145030; cv=none;
        d=google.com; s=arc-20160816;
        b=MWWyk/m6ODR2NPIjyuJv/Miasso2mqgPoIzAIoIs+uVZcInbtiRJ+EmnvXkfcemCF0
         TCBEyvzwjQ6xRJuOuaoSbGtrWhO50mHGPozCs5V4bG+KNs4Wn4heeZk8KxSTKBXQ00w3
         RdGyiJrVSEaaXjUVHi3VP/ZBP8eWgOeqT8vpovGXZSJEeS5JSdvGFuUluQVqvubgs0LT
         uHZOKLhm//hbB/TCYJI1VmyMnI+5GGO2y0LU+bVHp/9XTufPBIGsJgv9zgfcy5F5CvTO
         jhJFFGAr4l/HvhcNyNVDRtpMuEvZ4ZszylxYBe3cVi5tA4TDbVjicnxd+wW60p7UBgKT
         fyew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=a4nCowKRwu10P4a1mjsPKRJd1c1pDAPRzYgA3Fdtx88=;
        b=G0W5Z0g5svgpRxCKb5mw9KetNm9uqJ5pUF55V+KMPh4goFmipIvCfug0rqwQ18tXvV
         97b33MFjpzosJSm13NRXlFTyAb/AqTbcoGQyBX4rUKe/Hi5O8tmGBJKDYBxG2NQxlKsC
         EuiG5rap62thI2GMTHRUdj6fboknREe7bRQ8/BOjbaIaAh24bRKdkpfcuN3Q60ctzlui
         h4N+2vieCBRiuNuMNk76IIQrhpZosPZljvmRz4RfGwrOM+6idu6+9k3rRa9+kynLSX1e
         mIb+KCloFO0hMq4r/sBHtKofFiE7XJoZ/MpFYOTfviSGsHwFfxnJJzcpjyO10tfcYABW
         JDlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id 5si654243otu.2.2019.11.18.22.30.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Nov 2019 22:30:30 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Nov 2019 22:30:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; 
   d="gz'50?scan'50,208,50";a="215463463"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 18 Nov 2019 22:30:27 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iWx1u-0001pv-Pw; Tue, 19 Nov 2019 14:30:26 +0800
Date: Tue, 19 Nov 2019 14:29:36 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [radeon-alex:amd-staging-drm-next 852/868]
 drivers/gpu/drm/drm_dsc.c:435:16: warning: comparison of distinct pointer
 types ('typeof (max_offset) *' (aka 'unsigned long *') and 'typeof
 (compute_offset(vdsc_cfg, 3, groups_per_line,
 (((vdsc_cfg->initial_xmit_delay) + (groups_per_line) - 1) /
 (groups_per_line)))) *' (aka 'int *'))
Message-ID: <201911191435.CPOuhLRE%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="b6mtxxqtrzh6vx5i"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--b6mtxxqtrzh6vx5i
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@lists.01.org
CC: dri-devel@lists.freedesktop.org
TO: Mikita Lipski <mikita.lipski@amd.com>
CC: David Francis <David.Francis@amd.com>
CC: Nikola Cornij <nikola.cornij@amd.com>

tree:   git://people.freedesktop.org/~agd5f/linux.git amd-staging-drm-next
head:   c749b504bf85eee2edc857c4549d83d34730113c
commit: 8d47a4e3262de5f749806245d087dc8aa5ae2253 [852/868] drm/dsc: Update =
drm_dsc to reflect native 4.2.0 DSC spec
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 0213adde218530=
bc31e5c4e50b49704c6bb2f2e9)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 8d47a4e3262de5f749806245d087dc8aa5ae2253
        # save the attached .config to linux build tree
        make.cross ARCH=3Darm64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/drm_dsc.c:435:16: warning: comparison of distinct pointe=
r types ('typeof (max_offset) *' (aka 'unsigned long *') and 'typeof (compu=
te_offset(vdsc_cfg, 3, groups_per_line, (((vdsc_cfg->initial_xmit_delay) + =
(groups_per_line) - 1) / (groups_per_line)))) *' (aka 'int *')) [-Wcompare-=
distinct-pointer-types]
                   max_offset =3D max(max_offset,
                                ^~~~~~~~~~~~~~~
   include/linux/kernel.h:861:19: note: expanded from macro 'max'
   #define max(x, y)       __careful_cmp(x, y, >)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:845:24: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                 ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:835:4: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                    ^~~~~~~~~~~~~~~~~
   include/linux/kernel.h:821:29: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 =3D=3D (typeof(y) *)1)))
                              ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
   drivers/gpu/drm/drm_dsc.c:440:16: warning: comparison of distinct pointe=
r types ('typeof (max_offset) *' (aka 'unsigned long *') and 'typeof (compu=
te_offset(vdsc_cfg, 3, groups_per_line, (((vdsc_cfg->initial_xmit_delay) + =
(groups_per_line * 2) - 1) / (groups_per_line * 2)))) *' (aka 'int *')) [-W=
compare-distinct-pointer-types]
                   max_offset =3D max(max_offset,
                                ^~~~~~~~~~~~~~~
   include/linux/kernel.h:861:19: note: expanded from macro 'max'
   #define max(x, y)       __careful_cmp(x, y, >)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:845:24: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                 ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:835:4: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                    ^~~~~~~~~~~~~~~~~
   include/linux/kernel.h:821:29: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 =3D=3D (typeof(y) *)1)))
                              ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
   2 warnings generated.

vim +435 drivers/gpu/drm/drm_dsc.c

   279=09
   280	/**
   281	 * drm_dsc_compute_rc_parameters() - Write rate control
   282	 * parameters to the dsc configuration defined in
   283	 * &struct drm_dsc_config in accordance with the DSC 1.2
   284	 * specification. Some configuration fields must be present
   285	 * beforehand.
   286	 *
   287	 * @vdsc_cfg:
   288	 * DSC Configuration data partially filled by driver
   289	 */
   290	int drm_dsc_compute_rc_parameters(struct drm_dsc_config *vdsc_cfg)
   291	{
   292		unsigned long groups_per_line =3D 0;
   293		unsigned long groups_total =3D 0;
   294		unsigned long num_extra_mux_bits =3D 0;
   295		unsigned long slice_bits =3D 0;
   296		unsigned long hrd_delay =3D 0;
   297		unsigned long final_scale =3D 0;
   298		unsigned long rbs_min =3D 0;
   299		unsigned long max_offset =3D 0;
   300=09
   301		if (vdsc_cfg->native_420 || vdsc_cfg->native_422) {
   302			/* Number of groups used to code each line of a slice */
   303			groups_per_line =3D DIV_ROUND_UP(vdsc_cfg->slice_width / 2,
   304						       DSC_RC_PIXELS_PER_GROUP);
   305=09
   306			/* chunksize in Bytes */
   307			vdsc_cfg->slice_chunk_size =3D DIV_ROUND_UP(vdsc_cfg->slice_width =
/ 2 *
   308								  vdsc_cfg->bits_per_pixel,
   309								  (8 * 16));
   310		} else {
   311			/* Number of groups used to code each line of a slice */
   312			groups_per_line =3D DIV_ROUND_UP(vdsc_cfg->slice_width,
   313						       DSC_RC_PIXELS_PER_GROUP);
   314=09
   315			/* chunksize in Bytes */
   316			vdsc_cfg->slice_chunk_size =3D DIV_ROUND_UP(vdsc_cfg->slice_width =
*
   317								  vdsc_cfg->bits_per_pixel,
   318								  (8 * 16));
   319		}
   320=09
   321		if (vdsc_cfg->convert_rgb)
   322			num_extra_mux_bits =3D 3 * (vdsc_cfg->mux_word_size +
   323						  (4 * vdsc_cfg->bits_per_component + 4)
   324						  - 2);
   325		else if (vdsc_cfg->native_422)
   326			num_extra_mux_bits =3D 4 * vdsc_cfg->mux_word_size +
   327				(4 * vdsc_cfg->bits_per_component + 4) +
   328				3 * (4 * vdsc_cfg->bits_per_component) - 2;
   329		else
   330			num_extra_mux_bits =3D 3 * vdsc_cfg->mux_word_size +
   331				(4 * vdsc_cfg->bits_per_component + 4) +
   332				2 * (4 * vdsc_cfg->bits_per_component) - 2;
   333		/* Number of bits in one Slice */
   334		slice_bits =3D 8 * vdsc_cfg->slice_chunk_size * vdsc_cfg->slice_hei=
ght;
   335=09
   336		while ((num_extra_mux_bits > 0) &&
   337		       ((slice_bits - num_extra_mux_bits) % vdsc_cfg->mux_word_size=
))
   338			num_extra_mux_bits--;
   339=09
   340		if (groups_per_line < vdsc_cfg->initial_scale_value - 8)
   341			vdsc_cfg->initial_scale_value =3D groups_per_line + 8;
   342=09
   343		/* scale_decrement_interval calculation according to DSC spec 1.11 =
*/
   344		if (vdsc_cfg->initial_scale_value > 8)
   345			vdsc_cfg->scale_decrement_interval =3D groups_per_line /
   346				(vdsc_cfg->initial_scale_value - 8);
   347		else
   348			vdsc_cfg->scale_decrement_interval =3D DSC_SCALE_DECREMENT_INTERVA=
L_MAX;
   349=09
   350		vdsc_cfg->final_offset =3D vdsc_cfg->rc_model_size -
   351			(vdsc_cfg->initial_xmit_delay *
   352			 vdsc_cfg->bits_per_pixel + 8) / 16 + num_extra_mux_bits;
   353=09
   354		if (vdsc_cfg->final_offset >=3D vdsc_cfg->rc_model_size) {
   355			DRM_DEBUG_KMS("FinalOfs < RcModelSze for this InitialXmitDelay\n")=
;
   356			return -ERANGE;
   357		}
   358=09
   359		final_scale =3D (vdsc_cfg->rc_model_size * 8) /
   360			(vdsc_cfg->rc_model_size - vdsc_cfg->final_offset);
   361		if (vdsc_cfg->slice_height > 1)
   362			/*
   363			 * NflBpgOffset is 16 bit value with 11 fractional bits
   364			 * hence we multiply by 2^11 for preserving the
   365			 * fractional part
   366			 */
   367			vdsc_cfg->nfl_bpg_offset =3D DIV_ROUND_UP((vdsc_cfg->first_line_bp=
g_offset << 11),
   368								(vdsc_cfg->slice_height - 1));
   369		else
   370			vdsc_cfg->nfl_bpg_offset =3D 0;
   371=09
   372		/* 2^16 - 1 */
   373		if (vdsc_cfg->nfl_bpg_offset > 65535) {
   374			DRM_DEBUG_KMS("NflBpgOffset is too large for this slice height\n")=
;
   375			return -ERANGE;
   376		}
   377=09
   378		if (vdsc_cfg->slice_height > 2)
   379			vdsc_cfg->nsl_bpg_offset =3D DIV_ROUND_UP((vdsc_cfg->second_line_b=
pg_offset << 11),
   380								(vdsc_cfg->slice_height - 1));
   381		else
   382			vdsc_cfg->nsl_bpg_offset =3D 0;
   383=09
   384		if (vdsc_cfg->nsl_bpg_offset > 65535) {
   385			DRM_DEBUG_KMS("NslBpgOffset is too large for this slice height\n")=
;
   386			return -ERANGE;
   387		}
   388=09
   389		/* Number of groups used to code the entire slice */
   390		groups_total =3D groups_per_line * vdsc_cfg->slice_height;
   391=09
   392		/* slice_bpg_offset is 16 bit value with 11 fractional bits */
   393		vdsc_cfg->slice_bpg_offset =3D DIV_ROUND_UP(((vdsc_cfg->rc_model_si=
ze -
   394							    vdsc_cfg->initial_offset +
   395							    num_extra_mux_bits) << 11),
   396							  groups_total);
   397=09
   398		if (final_scale > 9) {
   399			/*
   400			 * ScaleIncrementInterval =3D
   401			 * finaloffset/((NflBpgOffset + SliceBpgOffset)*8(finalscale - 1.1=
25))
   402			 * as (NflBpgOffset + SliceBpgOffset) has 11 bit fractional value,
   403			 * we need divide by 2^11 from pstDscCfg values
   404			 */
   405			vdsc_cfg->scale_increment_interval =3D
   406					(vdsc_cfg->final_offset * (1 << 11)) /
   407					((vdsc_cfg->nfl_bpg_offset +
   408					vdsc_cfg->nsl_bpg_offset +
   409					vdsc_cfg->slice_bpg_offset) *
   410					(final_scale - 9));
   411		} else {
   412			/*
   413			 * If finalScaleValue is less than or equal to 9, a value of 0 sho=
uld
   414			 * be used to disable the scale increment at the end of the slice
   415			 */
   416			vdsc_cfg->scale_increment_interval =3D 0;
   417		}
   418=09
   419		if (vdsc_cfg->scale_increment_interval > 65535) {
   420			DRM_DEBUG_KMS("ScaleIncrementInterval is large for slice height\n"=
);
   421			return -ERANGE;
   422		}
   423=09
   424		/*
   425		 * DSC spec mentions that bits_per_pixel specifies the target
   426		 * bits/pixel (bpp) rate that is used by the encoder,
   427		 * in steps of 1/16 of a bit per pixel
   428		 */
   429		if (vdsc_cfg->dsc_version_minor =3D=3D 2 && (vdsc_cfg->native_420 |=
| vdsc_cfg->native_422)) {
   430=09
   431			max_offset =3D compute_offset(vdsc_cfg, DSC_RC_PIXELS_PER_GROUP, g=
roups_per_line,
   432						DIV_ROUND_UP(vdsc_cfg->initial_xmit_delay,
   433							DSC_RC_PIXELS_PER_GROUP));
   434=09
 > 435			max_offset =3D max(max_offset,

---
0-DAY kernel test infrastructure                 Open Source Technology Cen=
ter
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporat=
ion

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201911191435.CPOuhLRE%25lkp%40intel.com.

--b6mtxxqtrzh6vx5i
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AakuAIVDDwMA

--b6mtxxqtrzh6vx5i--
