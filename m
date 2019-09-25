Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5GSV7WAKGQEYTJ5N7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 262D3BE84B
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 00:25:58 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id m17sf28019pgh.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 15:25:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569450356; cv=pass;
        d=google.com; s=arc-20160816;
        b=pjgiGsYNYC8yaTKnbTT6+aXqYUa5DMWgsKqN8bzVmzFdK1lSlQQLYmTyqIUqy6KLQA
         JcZNLCsV3/8axlO/0PnxZxBCjchzL/CaOeAETGC/ZhPS0YF7ZAcBUfkh68NF8s9Sp6vd
         ySEwI4zbZmeHQ5ZCUSfa01IbYDrW28b+bX1nljaseQtC5ZOPS0GJ5osSZ8X0+2SYJVtU
         pAEz03yXedRUpT1K0dlEHtEXAvT9Sg47ybJbIhmhLva0M+8WdIC7jkW9Z0K1YEV21fIT
         jkpZibl0DBbi2tJhKD5LazuNigHEb80oCEJDwtyXfgwbrk3XYLod823MAJu1Y4KWek10
         yK4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=JoC7mp1fifYxp7XBVpr6cKaXfnRJCVgs+9khhstztv4=;
        b=ZizbfPGJBMNDozywtBVZIHdHilGH2ShmV7hV74S9c3raJHZfFT0geWwjj8wBxd//D8
         Hqto1KcMIoROC0yDWat3z5joXULov0vy/+x5tgX1wdOXUayI6GQUHdpEspnNrALEfD5X
         JFmtDhK7RhdqsrBT0T76DWelMVYY0Cz0vjLW7SXqUcD7ISW86fba+j24wK2xvYAq6oGr
         sz3BLbFd0x1FHDJPtCGcr/ETBFscwSTh2fvtssRxkRM1iKAEiksM5qL5Vr/S90p/BdR6
         Zj0IMjdbdZPWClcvKI0eY7OhcyQ/qp9nZA0mqCvaOqlqn9bGBXzKRgEBb+i53UrcSayO
         vpGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JoC7mp1fifYxp7XBVpr6cKaXfnRJCVgs+9khhstztv4=;
        b=TTKDJNVSIXgG98xUzgo4LDyfeJvXE3V/yjRzqJRrBkna0Wbeq1gprJPEYQdQOuoLKA
         c8FLTg+0KW6nMEbr9wnsOYJ+yiskaL7J1k0p/9vsI3QR19nritKxzjPT7Y5rOX1Zoj9e
         HN/gAoiH3Bx2tqOpa35W+acdw1Bkd6zacmGKJNgj/Chiecup50ZiZQPMu0Q7+cpKk1gx
         6TFiCwMsKAVLZMwKUixUn0aP+tP2c8UG4cHRuBsAZAa79hDFxi2fcG5BOKD3BJiERnsH
         RK5OoHR4RR/NhIB2MkAcTC+EY26zUeBzIkemnkofJMYHf1/OPxO8mH/42Q/2CejnloNR
         QCoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JoC7mp1fifYxp7XBVpr6cKaXfnRJCVgs+9khhstztv4=;
        b=VdSDfWc85ZrVDB4zj/DCQYZXmkqnEUgVV9/XJSKkNG+AtGBOrTmr7HG5zp4mYIVlPt
         +nOZ7H4Fk9D2ycOlWg9Z4YI6L8mr5U/OEuDsBExy9Fpeb1vq2zt11eX8ZlnTGdUaw8be
         HOicM9TK3HGuAwZuZRPp7OHcEQW5UmMJX1lGqzfRY9xxl9qN3qlcFaI0AUhVSRLdJV2f
         Cdn5J9qvA4Z36VdwDpIDBaII4Czm1RcCqq13em8C1TjJFTOyupwcYDlUiXrEjwcCi+pp
         pWqPFRJn8jXW1/q+ES1zhkYk8MuIraYHeuDJuE1ZDO/n6DeejPRilOeUwey2bUpakL2f
         XjSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWVNyDfuiGIkLoqfcS+/WanYsBtZ+ym3Ozjg2K+MtJjFhRLVNxp
	RwP7uIU9gaXNsLT22HN6lWQ=
X-Google-Smtp-Source: APXvYqzwPrFV4KtR3iHzOHgQT5x2nOwgH5zsFa0JB9XSNMZvZqFxodIUYI3lm1nVhiWmFwKG9GxFiQ==
X-Received: by 2002:a17:902:8505:: with SMTP id bj5mr390760plb.11.1569450356266;
        Wed, 25 Sep 2019 15:25:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6307:: with SMTP id x7ls95811pfb.0.gmail; Wed, 25 Sep
 2019 15:25:55 -0700 (PDT)
X-Received: by 2002:a62:7d54:: with SMTP id y81mr45558pfc.86.1569450355897;
        Wed, 25 Sep 2019 15:25:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569450355; cv=none;
        d=google.com; s=arc-20160816;
        b=bltHimU/fTt3XcGA/i/M4mMhHfcQDpEdgIOpWSeE7o+8LdnqDF63ssMKnRAlLTg3v8
         71aDZW9Y+6votIoJnJzNBA3/rrfIcMul3ixPqQTU8ArPQRIce9mr9MdZ1uKVBtsf/nVn
         V+URGj8vayHz0mNaQsw4x6WsBF7jAoNjIqchGFNmLjSSqx+MWYLWFT46D8umvSdZGrem
         QyZU8kL8bkNqMF/WdJPhwn6nWmzlDZLZYqvCaFfb8VGEJbRsn1mtkblFI049eQlmfEKj
         pa3l20/mnVyapUYrgcpCw3sHR4BW0//NlVnS1o86ype2NO9yBBRmM4/gPHVFjKvOatIG
         Tyzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date;
        bh=gbu2UQZdKo4X9rh7vmb8zRvj4RGZEytffgGp0SrCfps=;
        b=ehrRIa/ofYMPV4ujaASTaVRNQGyGTzxFlXvRA1Xdeq29/xZPlSGKkI9vAZlKpy8aTx
         hTJPxkngnAtA8JfdsW51fwaDxNMZKzDPm+Hp3MmUHTXL0l06xf7Q/9jijzxMYH3pEPlH
         M3NWCTg4MyGGdP05rDb0dG5/6uDijRrwKcZxd72MckgkWlf2DlNfE9hSvo3q/Q1uTMdn
         ymnZr7Z07E7Xcs3e2NL+gJ8rbRzOublSTj9rB7FxJArwfOQYTfL/vxx5bYd9r4w73p4A
         u6vEaAfcbTguhEHEp9SXZ3WJlB1DaPVfVXWg5qvSVVJNgDHoAmbf9JC2jvYInItuOCv6
         36Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id d15si3006pjr.2.2019.09.25.15.25.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Sep 2019 15:25:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Sep 2019 15:25:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; 
   d="gz'50?scan'50,208,50";a="179956614"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 25 Sep 2019 15:25:50 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iDFjK-000Dpr-9j; Thu, 26 Sep 2019 06:25:50 +0800
Date: Thu, 26 Sep 2019 06:25:00 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] audit: Report suspicious O_CREAT usage
Message-ID: <201909260626.5Xa270mC%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="defuytpmhfwaypdq"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--defuytpmhfwaypdq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@01.org
In-Reply-To: <201909251348.A1542A52@keescook>
References: <201909251348.A1542A52@keescook>
TO: Kees Cook <keescook@chromium.org>
CC: Paul Moore <paul@paul-moore.com>, linux-kernel@vger.kernel.org, "J=C3=
=A9r=C3=A9mie Galarneau" <jeremie.galarneau@efficios.com>, s.mesoraca16@gma=
il.com, viro@zeniv.linux.org.uk, dan.carpenter@oracle.com, akpm@linux-found=
ation.org, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, kernel-harde=
ning@lists.openwall.com, linux-audit@redhat.com, torvalds@linux-foundation.=
org, linux-kernel@vger.kernel.org, "J=C3=A9r=C3=A9mie Galarneau" <jeremie.g=
alarneau@efficios.com>, s.mesoraca16@gmail.com, viro@zeniv.linux.org.uk, da=
n.carpenter@oracle.com, akpm@linux-foundation.org, Mathieu Desnoyers <mathi=
eu.desnoyers@efficios.com>, kernel-hardening@lists.openwall.com, linux-audi=
t@redhat.com, torvalds@linux-foundation.org
CC: linux-kernel@vger.kernel.org, "J=C3=A9r=C3=A9mie Galarneau" <jeremie.ga=
larneau@efficios.com>, s.mesoraca16@gmail.com, viro@zeniv.linux.org.uk, dan=
.carpenter@oracle.com, akpm@linux-foundation.org, Mathieu Desnoyers <mathie=
u.desnoyers@efficios.com>, kernel-hardening@lists.openwall.com, linux-audit=
@redhat.com, torvalds@linux-foundation.org

Hi Kees,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.3 next-20190924]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp
improve the system. BTW, we also suggest to use '--base' option to specify =
the
base tree in git format-patch, please see https://stackoverflow.com/a/37406=
982]

url:    https://github.com/0day-ci/linux/commits/Kees-Cook/audit-Report-sus=
picious-O_CREAT-usage/20190926-050423
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 06b3e3421af6d8=
bf027a19133380833c2df0ffb9)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel///time/timekeeping.c:24:
>> include/linux/audit.h:222:1: error: expected identifier or '('
   { }
   ^
   1 error generated.

vim +222 include/linux/audit.h

b48345aafb2038 Richard Guy Briggs 2019-05-10  187 =20
96368701e1c890 Paul Moore         2016-01-13  188  #else /* CONFIG_AUDIT */
96368701e1c890 Paul Moore         2016-01-13  189  static inline __printf(4=
, 5)
96368701e1c890 Paul Moore         2016-01-13  190  void audit_log(struct au=
dit_context *ctx, gfp_t gfp_mask, int type,
96368701e1c890 Paul Moore         2016-01-13  191  	       const char *fmt,=
 ...)
96368701e1c890 Paul Moore         2016-01-13  192  { }
96368701e1c890 Paul Moore         2016-01-13  193  static inline struct aud=
it_buffer *audit_log_start(struct audit_context *ctx,
96368701e1c890 Paul Moore         2016-01-13  194  						   gfp_t gfp_mask,=
 int type)
96368701e1c890 Paul Moore         2016-01-13  195  {
96368701e1c890 Paul Moore         2016-01-13  196  	return NULL;
96368701e1c890 Paul Moore         2016-01-13  197  }
96368701e1c890 Paul Moore         2016-01-13  198  static inline __printf(2=
, 3)
96368701e1c890 Paul Moore         2016-01-13  199  void audit_log_format(st=
ruct audit_buffer *ab, const char *fmt, ...)
96368701e1c890 Paul Moore         2016-01-13  200  { }
96368701e1c890 Paul Moore         2016-01-13  201  static inline void audit=
_log_end(struct audit_buffer *ab)
96368701e1c890 Paul Moore         2016-01-13  202  { }
96368701e1c890 Paul Moore         2016-01-13  203  static inline void audit=
_log_n_hex(struct audit_buffer *ab,
96368701e1c890 Paul Moore         2016-01-13  204  				   const unsigned ch=
ar *buf, size_t len)
96368701e1c890 Paul Moore         2016-01-13  205  { }
96368701e1c890 Paul Moore         2016-01-13  206  static inline void audit=
_log_n_string(struct audit_buffer *ab,
96368701e1c890 Paul Moore         2016-01-13  207  				      const char *bu=
f, size_t n)
96368701e1c890 Paul Moore         2016-01-13  208  { }
96368701e1c890 Paul Moore         2016-01-13  209  static inline void  audi=
t_log_n_untrustedstring(struct audit_buffer *ab,
96368701e1c890 Paul Moore         2016-01-13  210  						const char *string=
, size_t n)
96368701e1c890 Paul Moore         2016-01-13  211  { }
96368701e1c890 Paul Moore         2016-01-13  212  static inline void audit=
_log_untrustedstring(struct audit_buffer *ab,
96368701e1c890 Paul Moore         2016-01-13  213  					     const char *st=
ring)
96368701e1c890 Paul Moore         2016-01-13  214  { }
96368701e1c890 Paul Moore         2016-01-13  215  static inline void audit=
_log_d_path(struct audit_buffer *ab,
96368701e1c890 Paul Moore         2016-01-13  216  				    const char *pref=
ix,
96368701e1c890 Paul Moore         2016-01-13  217  				    const struct pat=
h *path)
96368701e1c890 Paul Moore         2016-01-13  218  { }
96368701e1c890 Paul Moore         2016-01-13  219  static inline void audit=
_log_key(struct audit_buffer *ab, char *key)
96368701e1c890 Paul Moore         2016-01-13  220  { }
21e61058cf0f22 Kees Cook          2019-09-25  221  static inline void audit=
_log_path_denied(int type, const char *string);
96368701e1c890 Paul Moore         2016-01-13 @222  { }
96368701e1c890 Paul Moore         2016-01-13  223  static inline int audit_=
log_task_context(struct audit_buffer *ab)
96368701e1c890 Paul Moore         2016-01-13  224  {
96368701e1c890 Paul Moore         2016-01-13  225  	return 0;
96368701e1c890 Paul Moore         2016-01-13  226  }
2a1fe215e7300c Paul Moore         2018-11-26  227  static inline void audit=
_log_task_info(struct audit_buffer *ab)
96368701e1c890 Paul Moore         2016-01-13  228  { }
4b7d248b3a1de4 Richard Guy Briggs 2019-01-22  229 =20

:::::: The code at line 222 was first introduced by commit
:::::: 96368701e1c89057bbf39222e965161c68a85b4b audit: force seccomp event =
logging to honor the audit_enabled flag

:::::: TO: Paul Moore <pmoore@redhat.com>
:::::: CC: Paul Moore <paul@paul-moore.com>

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201909260626.5Xa270mC%25lkp%40intel.com.

--defuytpmhfwaypdq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--defuytpmhfwaypdq--
