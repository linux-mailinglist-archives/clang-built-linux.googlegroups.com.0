Return-Path: <clang-built-linux+bncBAABBCNNZSAQMGQEABMPB2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id DB274320F64
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 03:27:22 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id 196sf5608686iob.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Feb 2021 18:27:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613960841; cv=pass;
        d=google.com; s=arc-20160816;
        b=fdc1Qjj7lfGGWp1f7wkD5mHBbp6g7yXepnUoW1e563pNNZl2303JfZLq9tWVrB63G9
         jYiEYPC3jJdG6U0RkgxBIfJCmQ59TFoAUOAvfyGPdeM9vRXvt6vYSpIvzm21WxDPTbwn
         KOgpFtCh8nUcj2CODVvY/3tGMYxUdWu1UCSjyfjhDQE+7hSJkxlroBKyL1crvej28GTS
         s6QKcal+giQcAbB5/v+DzfgJxeEO9j7v0yMSkqnuGWj0jRIHcfaQlZUbrk/ytZT4z59B
         bsUThAAal+aoCpWwpy+9Ssz+3qIrddF8k3RU1tTcgTiHS3zYrbaKydqNJ0mkAhk0IVol
         VXOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:references:in-reply-to:from
         :subject:date:message-id:content-transfer-encoding:mime-version
         :sender:dkim-signature;
        bh=Osmg8SW7XS4l2iu+r8dHOhtfxEVqU8NSkmrlhRkx7hg=;
        b=h3rKRCgS8HPSM6vnlcZfchEkFfqnY2XqdUEufgU3JmufNuQE9COiNu7r5JsqlPmcxq
         JE3Q5XphPNp/ACBW5hkEoClYuv/GJDz1scgWIT3/1o8+VB9HPej4qf/OIzmrIMsXm0Pf
         L/N5yltB7/fB1+9gqx9AsZ/P0zYkjURLaxhJuZhV6PGIneIDCdphDHRpYXdBs8v1l6ls
         IYAk7fIfwcI8ozPP+i2uMLWW8t8v4FeIkE+zIzRPnTbEdXL1HHYrxa58yoj1EHa/wafS
         frati+syNwnPj8+ggRlAbOD5e9zRYVIzqLgywXC2uBJQxpbqrn3uLgJHC2AisvQ+UFQy
         DONw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of huangpei@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=huangpei@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:content-transfer-encoding:message-id:date
         :subject:from:in-reply-to:references:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Osmg8SW7XS4l2iu+r8dHOhtfxEVqU8NSkmrlhRkx7hg=;
        b=mWUO/WbXD451AFCpmlLnfsrOF1dW0qYweX/JbvLrimtKXcBffURJrR8PeLHL0wUZQS
         F1G4X+FitJBIzUo1Kct4hXvkme9I9n4DxEqaXHzUhIJlO4fiSItDARmrlu6LD3Wv6D/Q
         QFwHpSCMJ7ugdsRSnRBOqvX66XP6cjYl4Yilbf6ysMXgFWTjpkY9jEcg2sutPv7uKfmd
         QsgtkrTEski+gphO+9fFgwdCab/n8hAVylDapwGkT+UxvTXEaDHSkk3QqU0IAD2pgIiK
         aJ7/MQmOuGeCs9kZ3m/xGxiTfuclftw3uIC0+Dsin+M2Ns9jL3P92zvGDkA1JzvBZ0yO
         9pcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:content-transfer-encoding
         :message-id:date:subject:from:in-reply-to:references:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Osmg8SW7XS4l2iu+r8dHOhtfxEVqU8NSkmrlhRkx7hg=;
        b=en6WPKYR74cd5YiD/Du/kC1IFCrkFjb7jyOCZcjHithYS5EbyKkrE6EAoVDmpCWXyB
         lHYtSPHYC5er307KGRfDFoEz0pKDOuEms3CDkYp6x4L04wlmuUmkjieJ6B62hfoiJuh4
         g6Un7xA369c8d/K2dELLKqUyyoBSlw2pZ/aiLZA3JwUQ8arBBGUfEYZQAPwvkwvuYT/3
         Qi9jdurw8eKY0ExQRGGt05caBK0owg5X4TNWJubORxAB2qWzSyUCvfjJIAi8LED+qjy0
         iK6cObcWUbN4A5JxGNCd1rM0hMX1ZaklU4Awvq+JO6+Q9mJSF1yFTnfdxRqaJ2V78cab
         dffQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gbL8D4POSo75fxzovYNM+BcYCv0B7WipVayw2C0xPgIjLvjtz
	Jf8RMwIh3KVoKU1DCqGrUGE=
X-Google-Smtp-Source: ABdhPJytKX1nwt/whTPTd6lfTiPg+zfTZqP2tzvJqRIpsUl+yP9ljLiAFpkWgKJiHlNgM6xTAsRUsw==
X-Received: by 2002:a92:cd81:: with SMTP id r1mr13393538ilb.252.1613960841387;
        Sun, 21 Feb 2021 18:27:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8ac3:: with SMTP id e3ls2745855iot.4.gmail; Sun, 21 Feb
 2021 18:27:21 -0800 (PST)
X-Received: by 2002:a6b:6518:: with SMTP id z24mr13249140iob.203.1613960840930;
        Sun, 21 Feb 2021 18:27:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613960840; cv=none;
        d=google.com; s=arc-20160816;
        b=xmpjI2Fp2Krkuqhh166slTvc40T8y09qr9Vi58EB117OUFB2tlxosS7w52R0GBZYUB
         ZFHEY6F5MIe/GV7jk/t37Mi2lsjF9N9o1pSg17hvB+0LpcaVPM64VSFbl6Lo5Dw+CYXy
         1cZaO/LMYOFs3DiGEEaO0u++Jjm6PrD99tEmFcOcKpM0j7wlLCDFX9EMP+hFyIDa/poY
         nPs1KvdZUg+Wbge6AhH2f4jFgpZD09HziQmZHHIUbWVVatIDZ1rZ/fCN3OJj3cDElw4L
         sYZT0AHNl1ro+jPgvNUmbWU8xuiasUpCdxZwe41x6xVsVy1r7batBbdwrUim1V2hnSjB
         z4Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:references:in-reply-to:from:subject:date:message-id
         :content-transfer-encoding:mime-version;
        bh=Id1aZFgmyyGIcnAH9mDadlJZq5Hm5fsqo45EtOR/V5o=;
        b=wE9RKkRtzZEAV3onsTqbXJmOrHYNivLqvCgqh6SZZyojoOMy64AK2nJ+T3vMJh6/05
         9h5/Yv4PEYqBd1NdBO2ZfmLjuxr34EeMojxRs6dc7XnAdGhs3xudGGBn7hyXIgGWlOvF
         bh2bkYgf9EVECTVwkN1YLq8AIzl9c30Nhivk0YzpfbnhDc6LWefHXv825GnIHFOCLldt
         bRIAGpMU1EO3kJNPwqGczm/ks1foJUIZh/1mILYygDS4yaXEyySdhG+Y2QGlYNwz7VyV
         ESNL/9Yaip++xq/2Hy3GvPf3fkrtU4ZS5I1MBavEFC4VQGXuLkDHWYOl49UF73rbIDHW
         HHLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of huangpei@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=huangpei@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id g10si350284ioo.0.2021.02.21.18.27.19
        for <clang-built-linux@googlegroups.com>;
        Sun, 21 Feb 2021 18:27:20 -0800 (PST)
Received-SPF: pass (google.com: domain of huangpei@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from [127.0.0.1] (unknown [182.149.161.179])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9BxTex7FjNgaxkNAA--.3531S2;
	Mon, 22 Feb 2021 10:27:09 +0800 (CST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: BlackBerry Email (10.3.3.3216)
Message-ID: <20210222022708.5771351.7345.9409@loongson.cn>
Date: Mon, 22 Feb 2021 10:27:08 +0800
Subject: Re: [PATCH] MIPS: clean up CONFIG_MIPS_PGD_CONTEXT handling
From: =?utf-8?b?6buE5rKb?= <huangpei@loongson.cn>
In-Reply-To: <202102211947.zSMGb1s3-lkp@intel.com>
References: <20210221022659.24146-1-huangpei@loongson.cn>
 <202102211947.zSMGb1s3-lkp@intel.com>
To: kernel test robot <lkp@intel.com>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, ambrosehua@gmail.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, Bibo Mao <maobibo@loongson.cn>, Andrew Morton <akpm@linux-foundation.org>, Linux Memory Management List <linux-mm@kvack.org>, linux-mips@vger.kernel.org, linux-arch@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>, Paul Burton <paulburton@kernel.org>, Li Xuefeng <lixuefeng@loongson.cn>
X-CM-TRANSID: AQAAf9BxTex7FjNgaxkNAA--.3531S2
X-Coremail-Antispam: 1UD129KBjvJXoWxKr47ZFW7Cr18CFWkAw17GFg_yoWxGrW7pa
	4jqwn5CrsYvry5WFZrJFs7WF15Kw4DArZxXF1DG34qvFWYvF1rKrn2kr4avr1DJFs2vay2
	qr4vqr1rKw1qkaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9Y14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26F
	4UJVW0owAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv
	7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r
	1j6r4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02
	628vn2kIc2xKxwCY02Avz4vE14v_Gr1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7
	v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF
	1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIx
	AIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWrJr0_WFyU
	JwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCT
	nIWIevJa73UjIFyTuYvjfUO_MaUUUUU
X-CM-SenderInfo: xkxd0whshlqz5rrqw2lrqou0/
X-Original-Sender: huangpei@loongson.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of huangpei@loongson.cn designates 114.242.206.163 as
 permitted sender) smtp.mailfrom=huangpei@loongson.cn
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

Hi, jiaxun,

It seems on 32 bit kernel, patch cause warning, but 32bit MIPS

** =E2=80=8Eneed **CP0 Contextconfig configuration to enlarge the=C2=A0

PTEBase field. Currently MIPS=E2=80=8E Kconfig did not use MIPS=C2=A0

_PGD_C0_CONTEXT on 32 bit CPU. Can we just ignore this=C2=A0

warning?

=C2=A0 Original Message =C2=A0
=E2=80=8E
From: kernel test robot
Sent: 2021=E5=B9=B42=E6=9C=8821=E6=97=A5=E6=98=9F=E6=9C=9F=E6=97=A5 19:22
To: Huang Pei; Thomas Bogendoerfer; ambrosehua@gmail.com
Cc: kbuild-all@lists.01.org; clang-built-linux@googlegroups.com; Bibo Mao; =
Andrew Morton; Linux Memory Management List; linux-mips@vger.kernel.org; li=
nux-arch@vger.kernel.org; Jiaxun Yang; Paul Burton; Li Xuefeng
Subject: Re: [PATCH] MIPS: clean up CONFIG_MIPS_PGD_CONTEXT handling

Hi Huang,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.11 next-20210219]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url: https://github.com/0day-ci/linux/commits/Huang-Pei/MIPS-clean-up-CONFI=
G_MIPS_PGD_CONTEXT-handling/20210221-102942
base: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git f4=
0ddce88593482919761f74910f42f4b84c004b
config: mips-randconfig-r021-20210221 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439c=
a36342fb6013187d0a69aef92736951476)
reproduce (this is a W=3D1 build):
wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cro=
ss -O ~/bin/make.cross
chmod +x ~/bin/make.cross
# install mips cross compiling tool for clang build
# apt-get install binutils-mips-linux-gnu
# https://github.com/0day-ci/linux/commit/e9601358443c6579f0fb63deee9a172d2=
bd03c57
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Huang-Pei/MIPS-clean-up-CONFIG_MIPS_PGD_CO=
NTEXT-handling/20210221-102942
git checkout e9601358443c6579f0fb63deee9a172d2bd03c57
# save the attached .config to linux build tree
COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=3Dmips=
=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/mips/mm/tlbex.c:1168:37: warning: shift count >=3D width of type [-=
Wshift-count-overflow]
uasm_i_ori(p, ptr, ptr, (CAC_BASE >> 53));
^ ~~
arch/mips/mm/tlbex.c:2605:6: warning: no previous prototype for function 'b=
uild_tlb_refill_handler' [-Wmissing-prototypes]
void build_tlb_refill_handler(void)
^
arch/mips/mm/tlbex.c:2605:1: note: declare 'static' if the function is not =
intended to be used outside of this translation unit
void build_tlb_refill_handler(void)
^
static=20
arch/mips/mm/tlbex.c:185:1: warning: unused function 'uasm_l_second_part' [=
-Wunused-function]
UASM_L_LA(_second_part)
^
arch/mips/include/asm/uasm.h:204:20: note: expanded from macro 'UASM_L_LA'
static inline void uasm_l##lb(struct uasm_label **lab, u32 *addr) \
^
<scratch space>:46:1: note: expanded from here
uasm_l_second_part
^
arch/mips/mm/tlbex.c:192:1: warning: unused function 'uasm_l_tlbl_goaround2=
' [-Wunused-function]
UASM_L_LA(_tlbl_goaround2)
^
arch/mips/include/asm/uasm.h:204:20: note: expanded from macro 'UASM_L_LA'
static inline void uasm_l##lb(struct uasm_label **lab, u32 *addr) \
^
<scratch space>:58:1: note: expanded from here
uasm_l_tlbl_goaround2
^
arch/mips/mm/tlbex.c:196:1: warning: unused function 'uasm_l_smp_pgtable_ch=
ange' [-Wunused-function]
UASM_L_LA(_smp_pgtable_change)
^
arch/mips/include/asm/uasm.h:204:20: note: expanded from macro 'UASM_L_LA'
static inline void uasm_l##lb(struct uasm_label **lab, u32 *addr) \
^
<scratch space>:66:1: note: expanded from here
uasm_l_smp_pgtable_change
^
5 warnings generated.


vim +1168 arch/mips/mm/tlbex.c

1108=09
1109	static struct mips_huge_tlb_info
1110	build_fast_tlb_refill_handler (u32 **p, struct uasm_label **l,
1111	 struct uasm_reloc **r, unsigned int tmp,
1112	 unsigned int ptr, int c0_scratch_reg)
1113	{
1114	 struct mips_huge_tlb_info rv;
1115	 unsigned int even, odd;
1116	 int vmalloc_branch_delay_filled =3D 0;
1117	 const int scratch =3D 1; /* Our extra working register */
1118=09
1119	 rv.huge_pte =3D scratch;
1120	 rv.restore_scratch =3D 0;
1121	 rv.need_reload_pte =3D false;
1122=09
1123	 if (check_for_high_segbits) {
1124	 UASM_i_MFC0(p, tmp, C0_BADVADDR);
1125=09
1126	 if (pgd_reg !=3D -1)
1127	 UASM_i_MFC0(p, ptr, c0_kscratch(), pgd_reg);
1128	 else
1129	 UASM_i_MFC0(p, ptr, C0_CONTEXT);
1130=09
1131	 if (c0_scratch_reg >=3D 0)
1132	 UASM_i_MTC0(p, scratch, c0_kscratch(), c0_scratch_reg);
1133	 else
1134	 UASM_i_SW(p, scratch, scratchpad_offset(0), 0);
1135=09
1136	 uasm_i_dsrl_safe(p, scratch, tmp,
1137	 PGDIR_SHIFT + PGD_ORDER + PAGE_SHIFT - 3);
1138	 uasm_il_bnez(p, r, scratch, label_vmalloc);
1139=09
1140	 if (pgd_reg =3D=3D -1) {
1141	 vmalloc_branch_delay_filled =3D 1;
1142	 /* Clear lower 23 bits of context. */
1143	 uasm_i_dins(p, ptr, 0, 0, 23);
1144	 }
1145	 } else {
1146	 if (pgd_reg !=3D -1)
1147	 UASM_i_MFC0(p, ptr, c0_kscratch(), pgd_reg);
1148	 else
1149	 UASM_i_MFC0(p, ptr, C0_CONTEXT);
1150=09
1151	 UASM_i_MFC0(p, tmp, C0_BADVADDR);
1152=09
1153	 if (c0_scratch_reg >=3D 0)
1154	 UASM_i_MTC0(p, scratch, c0_kscratch(), c0_scratch_reg);
1155	 else
1156	 UASM_i_SW(p, scratch, scratchpad_offset(0), 0);
1157=09
1158	 if (pgd_reg =3D=3D -1)
1159	 /* Clear lower 23 bits of context. */
1160	 uasm_i_dins(p, ptr, 0, 0, 23);
1161=09
1162	 uasm_il_bltz(p, r, tmp, label_vmalloc);
1163	 }
1164=09
1165	 if (pgd_reg =3D=3D -1) {
1166	 vmalloc_branch_delay_filled =3D 1;
1167	 /* insert bit[63:59] of CAC_BASE into bit[11:6] of ptr */
> 1168	 uasm_i_ori(p, ptr, ptr, (CAC_BASE >> 53));
1169	 uasm_i_drotr(p, ptr, ptr, 11);
1170	 }
1171=09

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210222022708.5771351.7345.9409%40loongson.cn.
