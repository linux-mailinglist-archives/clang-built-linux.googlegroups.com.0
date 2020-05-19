Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWE5SH3AKGQEHY6BQUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9A41DA372
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 23:25:45 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id e3sf535970vkh.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 14:25:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589923544; cv=pass;
        d=google.com; s=arc-20160816;
        b=tXAllxC8yhD9a5MgZivQCDREtOZ5II5GeBG+77tnT9FO+Tgen85gE1H6ski1I/3WKX
         zwpduir8HCsN+slSf1AxWtqwfU9zSO7ovltH24B8rjzyzltxoZlxUp0CAXyiIpdMcQDy
         obF9CNsf9fTSHZ8AEEyogbePQsE5NZtf5R2VW0E8FAZMuRtCz/gx4HZxuQhhocAXbRrO
         Cdx37WGoQDikGTvhO/eETF5mqwU3n0GEK1apFzftv0ZfaqUGREfYrAQLC01/PQmxLGm0
         uKgBh+pX9+GGnTNxNpZiPfoLvbL4elt3fqpXXNT/mt65Kf86pDj8b+Og51/9PFUsguzL
         ATGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=fpZ4CHXdi+p40kJUv8evrCK42YpACKV7BJzCKpfxNsU=;
        b=Honx8UgQcmbw/pZ5gzwl53LDKC8EnK58hX82IOOc8vYVpf8axAJONudvdTkCZS517V
         P2qELUS0xLSXPILNWPwMfOiodj5ZNoKldEoo71VmDgSLBT/y0fTh9kJNaVntAYyukxiB
         g+eNI49PlQ/ERpURl4yd6c/6/Kc+kDXvLz1CGDMrxB4UmmbhLa/DYD2rVXZZM13fGZ9K
         vOwV2pqgfSemeVJmK7GHB2uwvqKr42ziX8rtQt6ABXdR+BsleRfCjjk+SzGi7aPtqqKR
         H/swwkwwXYQQlf6femAqufRj6UtoUdXBDh+amiAUdeA5C63l7k8zLnDCtH+SWHD6Mtdu
         fKOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kH0wmO1b;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fpZ4CHXdi+p40kJUv8evrCK42YpACKV7BJzCKpfxNsU=;
        b=IG6GFg0yLPv8NO2V/z6dUpBlwwLK1ipg3L+kE7Osn/TY3dOix1+N0cHZrDUre7RkjP
         6R2cz7AT64sigx72YxiCPmA5WuZINygGdqiJraN/hT32YyBBVGBPmbRi84CvlaStmBAd
         EEfpIB7oD7i0fWYb5mNdhN/pKV/Xja0N7HAnII7pmhLap/+vFQrY0Lr1nv2Y3AM9hqkJ
         +f1as8lbi9XhZ09v7z7VZJeO7/8dvIh080zwDJcAFLaK56PpIXd2qiLFB9KDtDsk9Six
         588b81rE5OJXvKjiXRpGzKOVXcI1fwSkFPoOemfzaJSsq1M00kZc/pixNb/q/3L6Ko2w
         5xrQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fpZ4CHXdi+p40kJUv8evrCK42YpACKV7BJzCKpfxNsU=;
        b=SPZVgu89eN4qhZguHnE5vJAqHfBwdgEC/jXW9zb60hkYV9cuhuanGNk5T1xNYZh0MY
         4ovI/+OggsbgZS9YARsj/NBTAj0k+93XgSyNFhvqrrZQSpxbHeQompwzgIR8dfli4Pzn
         tyB+JMZ9GLx/fJ6T5h15eAok5p8/tVyrZMqLhcTNEV57pK4Ukmlpxz1izIVDc1aUL1rh
         R5GN1P5ZdCx27mI+o1Fa2xU32O+XkoK79SNfTJ/PnFY9BOywWEtA71JRxtGwuwuIXfHX
         JmMUqisdZ7wnK7naHoVqCQLcq/neFsyNd+EtFaVyvO++s9S70mKX7Ncc8kupSjYmhVQ5
         9Wqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fpZ4CHXdi+p40kJUv8evrCK42YpACKV7BJzCKpfxNsU=;
        b=YGRoQklJJDPT7ZNBLpiDgcLEdToyVaMOq7qzgKOxDMcmRHQrmn/P+gF30DIPhfmnW4
         MngmHS6lSQgSduQN9h+Op1vjQAMNGc8y0LAgQbVo+UKWyvzU17keJ+yRver6uA/msOjE
         MvKk4cUfKhTXoATqL2NLyPDhuSRQdBB1M/3ou/tLEPutQp8ui7GV0KAUcroqHLrsiyHF
         RC6dgSZVhRoMgqo4hbhgYRCe7S6dSgJWc3tte/OHBNnH8U9375ARvGT04ww4q6fH0na2
         2M42C5Rp00I9Hbcq+xAlKwhj1cSusD7yFt/eEc2eFj8x7YsqPPpe6xFp0I+sXMtYRwav
         C4YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xBeOwkQ/MFzyJmOAlg/rNnykcNNcWWmlnZNKmfH23uKzx5pG8
	4dEn1GS+1ozznMIFkpZSbG8=
X-Google-Smtp-Source: ABdhPJzTpCH/5w8GeDckcPUP7/q1nqO7KBgIrbsNZgX3S9Nwu0kFI4nWNNdy/1BbC6OhVEw7WKwhOQ==
X-Received: by 2002:a9f:2188:: with SMTP id 8mr1384914uac.46.1589923544770;
        Tue, 19 May 2020 14:25:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5c90:: with SMTP id q138ls65475vkb.1.gmail; Tue, 19 May
 2020 14:25:44 -0700 (PDT)
X-Received: by 2002:a1f:cec4:: with SMTP id e187mr1639249vkg.36.1589923544438;
        Tue, 19 May 2020 14:25:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589923544; cv=none;
        d=google.com; s=arc-20160816;
        b=vuC4TbYrkRARQmNxfRxbL/T4g7AK/Px0jNGA6mU2t9AYuVFjwPXRSMlnOXDiHGayD+
         SOiTC55pUaYVnSDcz0FhnZo2/arSUajSnD5Mi9CWMlMAgB26Nx4JVhbI2RtDpCtUXr/L
         MWk+JBmwtULVkpd9ugn+6/0QEbVOe5vHlOd9FiI5DChVShROHwOV1md8Zpaqtn7BVRSA
         KuYPEzZFlLHz0QKqQJI4ym5Zhn7RfkKRwWJKuLfkWpl6pUzt825anoh+9rPB1AtlzryG
         JSdWUUWtNlX4voIztXIY2/2OqNHQH/65/oxPeRLRCMpZBpc7mG9U1DxiOHFaUTHEusA8
         97vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=FWlhpdjVXDxOYBQi8YbLzRL++t+OQcthpCLKDRscJz8=;
        b=UJjU05RNDYMJXNUmBRROBzi4rZMMX6dDmNPdkmb5coTPdvPK5RBrzH005odaDc0tW4
         LpMiBGcCEldNrnWxWDZ063PWVhS52Shht57ejUnv6G5JIpEe4NJGpFYaunfQ2+DsbRZT
         ESUBhJP1r4a8EUzwWhv2V668wo3EXmLJ0UYdOFH06ImYe4jPD72NCYxWrwr4sxcNko0w
         l/z37kixJ9RJEBtDJT1ZVJLaqbmTnelxan4Y6JjZYSmacNXA8pxF29Z4i1PqREx+3NFZ
         yF8qoVvThvLGs3XlRlu9eU3ZRDspQbR0Zp+mtr7KtKxgPEK9qP6UYWG0pApXCPeoiI/f
         enqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kH0wmO1b;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id i26si89253vsk.0.2020.05.19.14.25.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 14:25:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id h7so805854otr.3
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 14:25:44 -0700 (PDT)
X-Received: by 2002:a9d:47:: with SMTP id 65mr790008ota.349.1589923543750;
        Tue, 19 May 2020 14:25:43 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id d15sm216747otk.41.2020.05.19.14.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2020 14:25:43 -0700 (PDT)
Date: Tue, 19 May 2020 14:25:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Borislav Petkov <bp@alien8.de>
Cc: kbuild test robot <lkp@intel.com>, Christoph Hellwig <hch@lst.de>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, x86@kernel.org,
	Benjamin Thiel <b.thiel@posteo.de>
Subject: Re: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no previous
 prototype for function 'x86_has_pat_wp'
Message-ID: <20200519212541.GA3580016@ubuntu-s3-xlarge-x86>
References: <202005200123.gFjGzJEH%lkp@intel.com>
 <20200519205505.GD444@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200519205505.GD444@zn.tnic>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kH0wmO1b;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, May 19, 2020 at 10:55:05PM +0200, Borislav Petkov wrote:
> On Wed, May 20, 2020 at 01:51:25AM +0800, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git x86=
/mm
> > head:   bd1de2a7aace4d1d312fb1be264b8fafdb706208
> > commit: 1f6f655e01adebf5bd5e6c3da2e843c104ded051 [1/23] x86/mm: Add a x=
86_has_pat_wp() helper
> > config: x86_64-randconfig-r012-20200519 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 13=
5b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout 1f6f655e01adebf5bd5e6c3da2e843c104ded051
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dx86_64=20
> >=20
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >=20
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >=20
> > >> arch/x86/mm/init.c:75:6: warning: no previous prototype for function=
 'x86_has_pat_wp' [-Wmissing-prototypes]
> > bool x86_has_pat_wp(void)
> > ^
>=20
> Triggers with gcc too:
>=20
> make W=3D1 arch/x86/mm/init.o
>=20
> ...
>=20
> arch/x86/mm/init.c:81:6: warning: no previous prototype for =E2=80=98x86_=
has_pat_wp=E2=80=99 [-Wmissing-prototypes]
>    81 | bool x86_has_pat_wp(void)
>       |      ^~~~~~~~~~~~~~
>=20
>=20
> -Wmissing-prototypes is default off, though, dunno why clang 11 has it
> on.

It doesn't: https://godbolt.org/z/rU5_5H

I assume this is caused by some sort of internal change to the 0day
infrastructure (testing W=3D1?)

I cannot see this without adding W=3D1 to make at the listed commit with
the provided config.

Cheers,
Nathan

> Anyway, something for Benni to fix. CCed and leaving the rest for him as
> reference.
>=20
> > arch/x86/mm/init.c:75:1: note: declare 'static' if the function is not =
intended to be used outside of this translation unit
> > bool x86_has_pat_wp(void)
> > ^
> > static
> > arch/x86/mm/init.c:866:13: warning: no previous prototype for function =
'mem_encrypt_free_decrypted_mem' [-Wmissing-prototypes]
> > void __weak mem_encrypt_free_decrypted_mem(void) { }
> > ^
> > arch/x86/mm/init.c:866:1: note: declare 'static' if the function is not=
 intended to be used outside of this translation unit
> > void __weak mem_encrypt_free_decrypted_mem(void) { }
> > ^
> > static
> > 2 warnings generated.
> >=20
> > vim +/x86_has_pat_wp +75 arch/x86/mm/init.c
> >=20
> >     73=09
> >     74	/* Check that the write-protect PAT entry is set for write-prote=
ct */
> >   > 75	bool x86_has_pat_wp(void)
> >     76	{
> >     77		return __pte2cachemode_tbl[_PAGE_CACHE_MODE_WP] =3D=3D _PAGE_CA=
CHE_MODE_WP;
> >     78	}
> >     79=09
> >=20
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20
>=20
>=20
> --=20
> Regards/Gruss,
>     Boris.
>=20
> https://people.kernel.org/tglx/notes-about-netiquette
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200519212541.GA3580016%40ubuntu-s3-xlarge-x86.
