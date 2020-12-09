Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4FPYX7AKGQEDH5NXAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id B16542D4E6F
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 00:04:17 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id q11sf4399418ybm.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 15:04:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607555056; cv=pass;
        d=google.com; s=arc-20160816;
        b=gmRnY0h0e9XDE32+b6xXHlHJQeq6sN9E+ogZYWt4OCeHnlFXnKQ3CNrQ+D27LWH9a6
         sp0TKMJUtx7MRb8cy6Bu+u6NVKUo9PWkdhY+tRat8Fr7dOmUXX4MRcM3dRKlOjqHQwZz
         NFWn77BW2y1QCukiIjYKU9OzwYnWRlilkedookVswzpl7V81KqQ6eStQ4yflBGRSpS1V
         ZLfXRmtCuE4gPUNg6CS1GPCvu3W2/4yAHejX1hQ9KI7CcEntsWDS0BjUMtT2xSnj+sVi
         IpekSaJoxzF/hGjY1SW105f1jk/rRa+UpL4JACrfXVEcBodqtXOQLw+bMhuBswsYIpwG
         QzcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=yfgGutMnHxtwswE2yp3pe+Xlvb341fr/5pQWcD9cjoQ=;
        b=ZwBA9Zgqs5ayZTAcmVh9JBML8vpwKRwWk3O+DuzeKZsHAq5jRk9kAbUltDNYFQrLN0
         6L0OxUWeiVI1FZZA4XFFog+wiP4+uBfhUqNHQ+2wWfBbZnptTFhKwhxHb/9YbwYZbq6O
         oHEnYEU+G+UwR+Ordd9KA9LQkDDcpfGElR1aYgzKvcO13vApFOZC4S1kt49eEktclQCf
         eytm0aUiUpD+skGg/SE978Fg1V0PS9D9K9aIyXgCvCPW4cHaC5A3qUSylHgiJZoTYUJ8
         C349IV7zm2TD2g5ZzjaCIFPqykDtVg85dsYrr2bZUOpjVrjDgLa9Kw2d/+fcoEQyT8Lg
         fQoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yfgGutMnHxtwswE2yp3pe+Xlvb341fr/5pQWcD9cjoQ=;
        b=TCFZhjzaJkBw8ubx6Kirj9pqRpNq+EFwjos7G+zA2HhMvybIBAJGSFjQL00WxXvD9n
         rYeUho5Q9pg/JHitwIk3u5DEuykv/O3AvPqsJwWlOjXJnSBjsFPSUB/+/Vlkr8RIpPeT
         Bb2yJCjkb1ydFnP6FzSlUGkX1tu2tDv97AfSNmLUA50vgkO1js/wM3Ggz6DFe7cs1Zqs
         UzLPYhKp232vNji+Ve1zibea3G5CFUOyCthb0UBkh4l0mlkZ4KrOV1/Q48D/Y1PvT6yx
         Z1sJoznOjd/G/kbUz7S6nFIcq0zMrfNe+VsWhW1O/HfZSsulndjgf2HW3v4xkbf2yxGt
         SS4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yfgGutMnHxtwswE2yp3pe+Xlvb341fr/5pQWcD9cjoQ=;
        b=EARptPkw2VIj2hm+H2MFpzuUF8ow9lf0IPmoiqahJkZT+idTDNC3GRROp/Wn5g2+oZ
         CNfczIUnoTbcRtJNkIof3sXOm40uLKcsOazAqB2HDrCx80eQYnzPITksXzmkbrcfwYvX
         pWAWUr3Uk5adEzY/X4RGF4t4XUKsGEXRlloUvw+ne/QPN4l7o49zGwZfDLF9o2IoWzEL
         NTZQHRh8U9naAtYkrST1fviO07eylMaaT4LTGPMZcPG1VoVXQEemifx2D/H8DPoDY0fj
         kq5npCDBYMFPYwHWWoJpZ999RLsEuoG1IiuGLX0Qc2+0WCKjm1w8V+x5FHIRqS5k+Rdu
         IcUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53375Bndy8Mf1VyQZTHYqlLXLoJP2aNAiR9mUT+gB9weu4B6n8+K
	INcFjB5e5wL9zvqSL+/47SY=
X-Google-Smtp-Source: ABdhPJzkRU/Mur8IkhCxxh1UALjm5dzQAs/WHyMP7W/B8Kkehq6oTOtKo3E/FzqpNPIlDq1Og/AjSQ==
X-Received: by 2002:a25:b745:: with SMTP id e5mr7236245ybm.308.1607555056723;
        Wed, 09 Dec 2020 15:04:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:23d1:: with SMTP id j200ls1580197ybj.11.gmail; Wed, 09
 Dec 2020 15:04:16 -0800 (PST)
X-Received: by 2002:a25:3a86:: with SMTP id h128mr6808072yba.401.1607555056230;
        Wed, 09 Dec 2020 15:04:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607555056; cv=none;
        d=google.com; s=arc-20160816;
        b=CNrFDRWjuovB5StX3xKVaxKGycZJD7S0Efzh3E9FrMdPvgFkKgjaRz1nzDkRUTs6vI
         jtGNH31M32sR0TjomsMJzkUCOT1tHTwbBDOpoxNR9uh3fsVmJSw6gRGZlrXCY1+pEU0t
         u/HCMyNkO3M8O2DycJzb9SRLs4VshIelDb7EbQsn4FWiBgSbndNpAkOGxaavaoop+E87
         SYCx5C4el3oM2eX8naxt7/K8WbaY8f40vdD66kDERpSgcxeWtRg7/Td4Wve5UWRu5U0+
         AeVpVLAtqIaD4D40MOBztRPYl8SzjaKzri3xzM/o1s04aaCBfx3qva1Sm9/bPWKTXY+7
         JwWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=BSayEDLVwGcdiF8iDqyuYgE61ORkF0PLUaF8Lhs2hlc=;
        b=IVna28BhLZyVwNjw6fLYJjox+8+MYwI9diwJulnWrlrvatdzy7Ww+fua+1H3eWu083
         8HCV3QRDM3X8NWX/YzUukHxSI9yMxQibtAaORzAMCUGXcV70CYSmhhimJbZDkXPenmCR
         YdLIzgIMZs8sJOkUlymBwcQN06NvFM0uclWTWBWfgkC2+CaEKy9HKJ8eylnaijXQCgE9
         KjyRKuiKSAjSI8drxkQ41rHug0VQLnz18fQYhYPN7lZ/gdC7w5zZxF5U59Aogb3masRO
         I/KAS/0pgwN7UNGhxhZaghOF2OjLqC7t89s4OjPKKzn+tlhgwXT4ET8FZpQ5Tzzar8Kz
         yU/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id m3si310850ybf.1.2020.12.09.15.04.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 15:04:16 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: MqLm5MuBsmML4ub0nTNWe/KgyCFEpKcXk68Hss8S/Wd+DSjGnHATw6lJPYe24+eqckeXlbJ1iy
 TqqDNhEBO6Zg==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="174280935"
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; 
   d="gz'50?scan'50,208,50";a="174280935"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Dec 2020 15:04:14 -0800
IronPort-SDR: itTryGqwhRRTGHSASW/rVSoxPiSKvWBNPJBW6lVjR/RPp+xbMorHLRLe7u9RQWjaCe3BoU+Tqk
 9+aeexT9Dy4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; 
   d="gz'50?scan'50,208,50";a="552829261"
Received: from lkp-server01.sh.intel.com (HELO 2bbb63443648) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 09 Dec 2020 15:04:10 -0800
Received: from kbuild by 2bbb63443648 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kn8VF-0000WD-IV; Wed, 09 Dec 2020 23:04:09 +0000
Date: Thu, 10 Dec 2020 07:03:15 +0800
From: kernel test robot <lkp@intel.com>
To: Hao Luo <haoluo@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>
Subject: kernel/bpf/verifier.c:9689:12: warning: stack frame size of 1080
 bytes in function 'resolve_pseudo_ldimm64'
Message-ID: <202012100704.8UVeIwk8-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   ca4bbdaf171604841f77648a2877e2e43db69b71
commit: eaa6bcb71ef6ed3dc18fc525ee7e293b06b4882b bpf: Introduce bpf_per_cpu_ptr()
date:   10 weeks ago
config: mips-randconfig-r026-20201209 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1968804ac726e7674d5de22bc2204b45857da344)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=eaa6bcb71ef6ed3dc18fc525ee7e293b06b4882b
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout eaa6bcb71ef6ed3dc18fc525ee7e293b06b4882b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> kernel/bpf/verifier.c:9689:12: warning: stack frame size of 1080 bytes in function 'resolve_pseudo_ldimm64' [-Wframe-larger-than=]
   static int resolve_pseudo_ldimm64(struct bpf_verifier_env *env)
              ^
   kernel/bpf/verifier.c:10747:12: warning: stack frame size of 1104 bytes in function 'fixup_bpf_calls' [-Wframe-larger-than=]
   static int fixup_bpf_calls(struct bpf_verifier_env *env)
              ^
   kernel/bpf/verifier.c:9163:12: warning: stack frame size of 3032 bytes in function 'do_check' [-Wframe-larger-than=]
   static int do_check(struct bpf_verifier_env *env)
              ^
   3 warnings generated.

vim +/resolve_pseudo_ldimm64 +9689 kernel/bpf/verifier.c

b741f1630346de Roman Gushchin     2018-09-28  9681  
4976b718c3551f Hao Luo            2020-09-29  9682  /* find and rewrite pseudo imm in ld_imm64 instructions:
4976b718c3551f Hao Luo            2020-09-29  9683   *
4976b718c3551f Hao Luo            2020-09-29  9684   * 1. if it accesses map FD, replace it with actual map pointer.
4976b718c3551f Hao Luo            2020-09-29  9685   * 2. if it accesses btf_id of a VAR, replace it with pointer to the var.
4976b718c3551f Hao Luo            2020-09-29  9686   *
4976b718c3551f Hao Luo            2020-09-29  9687   * NOTE: btf_vmlinux is required for converting pseudo btf_id.
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9688   */
4976b718c3551f Hao Luo            2020-09-29 @9689  static int resolve_pseudo_ldimm64(struct bpf_verifier_env *env)
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9690  {
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9691  	struct bpf_insn *insn = env->prog->insnsi;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9692  	int insn_cnt = env->prog->len;
fdc15d388d600d Alexei Starovoitov 2016-09-01  9693  	int i, j, err;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9694  
f1f7714ea51c56 Daniel Borkmann    2017-01-13  9695  	err = bpf_prog_calc_tag(env->prog);
aafe6ae9cee32d Daniel Borkmann    2016-12-18  9696  	if (err)
aafe6ae9cee32d Daniel Borkmann    2016-12-18  9697  		return err;
aafe6ae9cee32d Daniel Borkmann    2016-12-18  9698  
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9699  	for (i = 0; i < insn_cnt; i++, insn++) {
9bac3d6d548e5c Alexei Starovoitov 2015-03-13  9700  		if (BPF_CLASS(insn->code) == BPF_LDX &&
d691f9e8d4405c Alexei Starovoitov 2015-06-04  9701  		    (BPF_MODE(insn->code) != BPF_MEM || insn->imm != 0)) {
61bd5218eef349 Jakub Kicinski     2017-10-09  9702  			verbose(env, "BPF_LDX uses reserved fields\n");
9bac3d6d548e5c Alexei Starovoitov 2015-03-13  9703  			return -EINVAL;
9bac3d6d548e5c Alexei Starovoitov 2015-03-13  9704  		}
9bac3d6d548e5c Alexei Starovoitov 2015-03-13  9705  
d691f9e8d4405c Alexei Starovoitov 2015-06-04  9706  		if (BPF_CLASS(insn->code) == BPF_STX &&
d691f9e8d4405c Alexei Starovoitov 2015-06-04  9707  		    ((BPF_MODE(insn->code) != BPF_MEM &&
d691f9e8d4405c Alexei Starovoitov 2015-06-04  9708  		      BPF_MODE(insn->code) != BPF_XADD) || insn->imm != 0)) {
61bd5218eef349 Jakub Kicinski     2017-10-09  9709  			verbose(env, "BPF_STX uses reserved fields\n");
d691f9e8d4405c Alexei Starovoitov 2015-06-04  9710  			return -EINVAL;
d691f9e8d4405c Alexei Starovoitov 2015-06-04  9711  		}
d691f9e8d4405c Alexei Starovoitov 2015-06-04  9712  
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9713  		if (insn[0].code == (BPF_LD | BPF_IMM | BPF_DW)) {
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9714  			struct bpf_insn_aux_data *aux;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9715  			struct bpf_map *map;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9716  			struct fd f;
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9717  			u64 addr;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9718  
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9719  			if (i == insn_cnt - 1 || insn[1].code != 0 ||
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9720  			    insn[1].dst_reg != 0 || insn[1].src_reg != 0 ||
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9721  			    insn[1].off != 0) {
61bd5218eef349 Jakub Kicinski     2017-10-09  9722  				verbose(env, "invalid bpf_ld_imm64 insn\n");
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9723  				return -EINVAL;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9724  			}
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9725  
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9726  			if (insn[0].src_reg == 0)
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9727  				/* valid generic load 64-bit imm */
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9728  				goto next_insn;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9729  
4976b718c3551f Hao Luo            2020-09-29  9730  			if (insn[0].src_reg == BPF_PSEUDO_BTF_ID) {
4976b718c3551f Hao Luo            2020-09-29  9731  				aux = &env->insn_aux_data[i];
4976b718c3551f Hao Luo            2020-09-29  9732  				err = check_pseudo_btf_id(env, insn, aux);
4976b718c3551f Hao Luo            2020-09-29  9733  				if (err)
4976b718c3551f Hao Luo            2020-09-29  9734  					return err;
4976b718c3551f Hao Luo            2020-09-29  9735  				goto next_insn;
4976b718c3551f Hao Luo            2020-09-29  9736  			}
4976b718c3551f Hao Luo            2020-09-29  9737  
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9738  			/* In final convert_pseudo_ld_imm64() step, this is
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9739  			 * converted into regular 64-bit imm load insn.
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9740  			 */
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9741  			if ((insn[0].src_reg != BPF_PSEUDO_MAP_FD &&
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9742  			     insn[0].src_reg != BPF_PSEUDO_MAP_VALUE) ||
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9743  			    (insn[0].src_reg == BPF_PSEUDO_MAP_FD &&
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9744  			     insn[1].imm != 0)) {
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9745  				verbose(env,
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9746  					"unrecognized bpf_ld_imm64 insn\n");
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9747  				return -EINVAL;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9748  			}
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9749  
20182390c41344 Daniel Borkmann    2019-03-04  9750  			f = fdget(insn[0].imm);
c210129760a010 Daniel Borkmann    2015-10-29  9751  			map = __bpf_map_get(f);
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9752  			if (IS_ERR(map)) {
61bd5218eef349 Jakub Kicinski     2017-10-09  9753  				verbose(env, "fd %d is not pointing to valid bpf_map\n",
20182390c41344 Daniel Borkmann    2019-03-04  9754  					insn[0].imm);
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9755  				return PTR_ERR(map);
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9756  			}
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9757  
61bd5218eef349 Jakub Kicinski     2017-10-09  9758  			err = check_map_prog_compatibility(env, map, env->prog);
fdc15d388d600d Alexei Starovoitov 2016-09-01  9759  			if (err) {
fdc15d388d600d Alexei Starovoitov 2016-09-01  9760  				fdput(f);
fdc15d388d600d Alexei Starovoitov 2016-09-01  9761  				return err;
fdc15d388d600d Alexei Starovoitov 2016-09-01  9762  			}
fdc15d388d600d Alexei Starovoitov 2016-09-01  9763  
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9764  			aux = &env->insn_aux_data[i];
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9765  			if (insn->src_reg == BPF_PSEUDO_MAP_FD) {
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9766  				addr = (unsigned long)map;
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9767  			} else {
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9768  				u32 off = insn[1].imm;
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9769  
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9770  				if (off >= BPF_MAX_VAR_OFF) {
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9771  					verbose(env, "direct value offset of %u is not allowed\n", off);
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9772  					fdput(f);
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9773  					return -EINVAL;
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9774  				}
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9775  
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9776  				if (!map->ops->map_direct_value_addr) {
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9777  					verbose(env, "no direct value access support for this map type\n");
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9778  					fdput(f);
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9779  					return -EINVAL;
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9780  				}
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9781  
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9782  				err = map->ops->map_direct_value_addr(map, &addr, off);
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9783  				if (err) {
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9784  					verbose(env, "invalid access to map value pointer, value_size=%u off=%u\n",
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9785  						map->value_size, off);
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9786  					fdput(f);
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9787  					return err;
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9788  				}
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9789  
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9790  				aux->map_off = off;
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9791  				addr += off;
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9792  			}
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9793  
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9794  			insn[0].imm = (u32)addr;
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9795  			insn[1].imm = addr >> 32;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9796  
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9797  			/* check whether we recorded this map already */
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9798  			for (j = 0; j < env->used_map_cnt; j++) {
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9799  				if (env->used_maps[j] == map) {
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9800  					aux->map_index = j;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9801  					fdput(f);
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9802  					goto next_insn;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9803  				}
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9804  			}
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9805  
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9806  			if (env->used_map_cnt >= MAX_USED_MAPS) {
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9807  				fdput(f);
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9808  				return -E2BIG;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9809  			}
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9810  
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9811  			/* hold the map. If the program is rejected by verifier,
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9812  			 * the map will be released by release_maps() or it
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9813  			 * will be used by the valid program until it's unloaded
ab7f5bf0928be2 Jakub Kicinski     2018-05-03  9814  			 * and all maps are released in free_used_maps()
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9815  			 */
1e0bd5a091e5d9 Andrii Nakryiko    2019-11-17  9816  			bpf_map_inc(map);
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9817  
d8eca5bbb2be9b Daniel Borkmann    2019-04-09  9818  			aux->map_index = env->used_map_cnt;
92117d8443bc5a Alexei Starovoitov 2016-04-27  9819  			env->used_maps[env->used_map_cnt++] = map;
92117d8443bc5a Alexei Starovoitov 2016-04-27  9820  
b741f1630346de Roman Gushchin     2018-09-28  9821  			if (bpf_map_is_cgroup_storage(map) &&
e47304232b3733 Daniel Borkmann    2019-12-17  9822  			    bpf_cgroup_storage_assign(env->prog->aux, map)) {
b741f1630346de Roman Gushchin     2018-09-28  9823  				verbose(env, "only one cgroup storage of each type is allowed\n");
de9cbbaadba5ad Roman Gushchin     2018-08-02  9824  				fdput(f);
de9cbbaadba5ad Roman Gushchin     2018-08-02  9825  				return -EBUSY;
de9cbbaadba5ad Roman Gushchin     2018-08-02  9826  			}
de9cbbaadba5ad Roman Gushchin     2018-08-02  9827  
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9828  			fdput(f);
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9829  next_insn:
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9830  			insn++;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9831  			i++;
5e581dad4fec0e Daniel Borkmann    2018-01-26  9832  			continue;
5e581dad4fec0e Daniel Borkmann    2018-01-26  9833  		}
5e581dad4fec0e Daniel Borkmann    2018-01-26  9834  
5e581dad4fec0e Daniel Borkmann    2018-01-26  9835  		/* Basic sanity check before we invest more work here. */
5e581dad4fec0e Daniel Borkmann    2018-01-26  9836  		if (!bpf_opcode_in_insntable(insn->code)) {
5e581dad4fec0e Daniel Borkmann    2018-01-26  9837  			verbose(env, "unknown opcode %02x\n", insn->code);
5e581dad4fec0e Daniel Borkmann    2018-01-26  9838  			return -EINVAL;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9839  		}
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9840  	}
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9841  
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9842  	/* now all pseudo BPF_LD_IMM64 instructions load valid
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9843  	 * 'struct bpf_map *' into a register instead of user map_fd.
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9844  	 * These pointers will be used later by verifier to validate map access.
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9845  	 */
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9846  	return 0;
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9847  }
0246e64d9a5fcd Alexei Starovoitov 2014-09-26  9848  

:::::: The code at line 9689 was first introduced by commit
:::::: 4976b718c3551faba2c0616ef55ebeb74db1c5ca bpf: Introduce pseudo_btf_id

:::::: TO: Hao Luo <haoluo@google.com>
:::::: CC: Alexei Starovoitov <ast@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012100704.8UVeIwk8-lkp%40intel.com.

--J2SCkAp4GZ/dPZZf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--J2SCkAp4GZ/dPZZf--
