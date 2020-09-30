Return-Path: <clang-built-linux+bncBDY3NC743AGBBX6N2L5QKGQE4NRQOWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id DE50127ED79
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 17:40:16 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id g10sf1197876plq.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 08:40:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480415; cv=pass;
        d=google.com; s=arc-20160816;
        b=ANSVTVx/ls+84FklUML2n8F+PgheTHsGznCn1DVGdJxHMJdXC6oIjSctt4ZKFxaCr8
         ujXEWU9wF4Pzri4bkJcJjCWBOU/ns/KW5vEKkA/Vr2Sz6jHUHL2MxZlwQp/W54Q+55dQ
         4zi2EZbNxJD8hsHhafPCl9MfiATW8K0z3QnQEyFwjnEosPREw7DJ5mVoQYDfczyXaBA4
         KY+GZ7b/SnpqLHTg1WztaW7fZQyFTr8KrZjTovBAbj2GceMHEHY5xlx3NTTELUweGYDk
         ihX3uOLJO1MpLC7Klewo48D/s6GlDe6dNZb6o35QsOt+uM7URNVrNDkD4x8JQ+LjYYIz
         mx+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=Oq4j0LcKtZs1RDQyVmP0C2+Zjx8t46bRl88HxVMix+8=;
        b=KdN+3g4kfiCqovXiuxIpFQOhfEA2/svrOYShXpimAqzE3gxbkvYKE0g+HWIC/qjD/G
         tt9xYcjLCcu2pNRJmWtTWB3OIEJLCYkoacJU/lfTJ6HT1/26hD4T/TxrUgUbJuNP2Oyn
         9n3xeGax7RfgQqQHpeYaI6TFAb0KB6IWqnL5O8EC55r2iy/GzQMZM3yXhfpOKBFObBnD
         1RedDAwfudfOU3rce+kr5s2kdntbja2A30kkjKaQQKALvbr7Ep0UE78AUhF12DJNgWcd
         M7Ebp8RWHaCfFt0QF2QMkASpi7inNdyEr+yg4ygKhG9MHywCpTf4M4vCqKBinQ9KCLqW
         m1fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.193 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Oq4j0LcKtZs1RDQyVmP0C2+Zjx8t46bRl88HxVMix+8=;
        b=tGwKkcnwX06DrtDM+fbVmDjvBd7lJUTOa1SXi9YjQuUXgM/Q6mXjRZkgUonzxudMWN
         xOpnGlssN63QSUSngpQiRjUwpGKG2XmObi2//nC/bAqI9qFc1PooYw67owl2BtBDy4+G
         eAMaazzXYMEd6QJXTBvC672eYpQ50GinUOXG7Lf8A/UayO1BlcjdYkvDJASQzkV0/KvY
         uX9Si2WHKRXAZaRUzKsbjfD8nBYUUSIjRPA+ZDliVv04KIG5AM0++ToWFk+aG2RQr8wt
         Stw6DzovW/da4pLjlzgZezQ/pDm10Vp78ow3qHJVTWpPVHeAQx79LGaUGyWzgARCpD7v
         y4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oq4j0LcKtZs1RDQyVmP0C2+Zjx8t46bRl88HxVMix+8=;
        b=NyH5HoGjdxSzNyTfU+X7QLOiukXUseatpwEKVd1IBIOp4KMsydMp6fjQPbzgMvb+zc
         JGhBMEprfQg0JdUyHdthgxcEwk5cOimXT2TPqRlU6QrfcoZ7gO7rGB3K0V8Fl2kntwoP
         60wntrYCrtq+ECLx35deNujstqGb34YEy/0PUqAtqAW1jj+4C+m2kbH/66WYNrfY48Kw
         grTY3HRnipeSpty9fQEz3ESbE7p51cgoNNkxx2n7lAKCamKLSXMhvfAHbR6sy/cebNIJ
         0We+Y3kUUKR/ioknriNq69NnDN+bEfDoj1Jh+vyaIN3GvQ2A68KdPebP4YPltItF5yqW
         v0Bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Ugy59vQcEnUX2P2ibtB4n3lyW8v5Z9EopOYnS+RwMCACWoME0
	mxfqjs+vr/x7qsrPbvZLzd0=
X-Google-Smtp-Source: ABdhPJw//CBr45PsaxUPEOypEiypHmchWYAtzbrHiCBDRK0KOpqDRQf0un4ZHnS0UjFGUZE9G60EAA==
X-Received: by 2002:a63:b64a:: with SMTP id v10mr2513727pgt.192.1601480415645;
        Wed, 30 Sep 2020 08:40:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2292:: with SMTP id f18ls1003152pfe.6.gmail; Wed,
 30 Sep 2020 08:40:14 -0700 (PDT)
X-Received: by 2002:a63:f213:: with SMTP id v19mr2671908pgh.5.1601480414904;
        Wed, 30 Sep 2020 08:40:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480414; cv=none;
        d=google.com; s=arc-20160816;
        b=OSbS1/dyv8/wFH/0m34kjf1zNX2hNKkCBFqGnuslpaipCGDOAqPPee0Xa45ukT+nLK
         9hUQ5Z+txKO8HI/7jdh8L5z9ofsQa1W3sdXpzQTjOAFPsSRfZDpG4owyDA/kDnfjAZC8
         YlOnGv8Fxnt9TACsvl46NBkzCQpEGNGYOV2+jziMttuI83OwgnydZoIb4+5HPv6MOxbs
         QMIBL1yaZ3lVG1eiVLjnrVo90HzAUacw4g+ouc3enkIqOEKsDrHfgpga4ljgk81a+n1Z
         pZdJMG/k6n7kVq/ITTzi+L2UKsjJHVGdp0nFhsTaEXJ/EwRu5RwUYUw7Grgeu76b4Jr4
         VlqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id;
        bh=DDUXtMEOOXEc0voAMC1D3VD6nXxr2KpVQh2irjrGzlQ=;
        b=tvDwZHi992UtIi3FMxHCNvn8ZHUkzhrFieS9IfetH9dNZWthqyCMSLEoU0EgTQfJmq
         ipsZZ9l0w/iNs/C+dNEKY9wblPy+osHAGorapbnaz2+dFYJNZ01wY3VJcukj7+wRgTtW
         TwId4QkVSJf7Jf+EGxQYLGmFLgvMx2j7fkgU78kqbtrotmiqCRLk7UoVayIQrK/NGS87
         4Tp1TsG4XVUDQ9Wrw4+FP2s8yiLqrypbs5vfNz6nQ1Dyp9/x84pMH2V67NrD3jbdxVm3
         XoT/e/OeOxSpGkvMw5iEFobzc4vXeXLnOYiejxuon+kCa4P0unyje/vG9d4qCFeFT6b4
         7opg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.193 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0193.hostedemail.com. [216.40.44.193])
        by gmr-mx.google.com with ESMTPS id 18si137005plg.4.2020.09.30.08.40.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 08:40:14 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.193 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.193;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id E525F18225E14;
	Wed, 30 Sep 2020 15:40:13 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:871:982:988:989:1000:1260:1313:1314:1345:1359:1437:1516:1518:1535:1537:1566:1575:1594:1711:1714:1730:1747:1764:1777:1792:2393:2559:2562:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:4119:4321:5007:6506:6747:6748:7281:10004:10394:10400:10848:11232:11604:11658:11914:12297:12740:12895:13160:13229:13439:14659:21080:21433:21451:21627:21789:21972:30030:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:3,LUA_SUMMARY:none
X-HE-Tag: shirt16_0b14cd527194
X-Filterd-Recvd-Size: 8925
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Wed, 30 Sep 2020 15:40:12 +0000 (UTC)
Message-ID: <ffe0224b2dc88e091d4d3bb32ee073ffc0585882.camel@perches.com>
Subject: Re: [PATCH] compiler.h: avoid escaped section names
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar
	 <nivedita@alum.mit.edu>
Cc: Andrew Morton <akpm@linux-foundation.org>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Luc Van Oostenryck
 <luc.vanoostenryck@gmail.com>, Nathan Chancellor
 <natechancellor@gmail.com>,  linux-sparse@vger.kernel.org, LKML
 <linux-kernel@vger.kernel.org>,  clang-built-linux
 <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 08:40:11 -0700
In-Reply-To: <CAKwvOdm=H3GDOPo-dbgsqH7UXzC1twz1h2Rdcidh8OXtFtCY4Q@mail.gmail.com>
References: <20200929194318.548707-1-ndesaulniers@google.com>
	 <20200929200801.GA2668747@rani.riverdale.lan>
	 <CAKwvOdm=H3GDOPo-dbgsqH7UXzC1twz1h2Rdcidh8OXtFtCY4Q@mail.gmail.com>
Content-Type: multipart/mixed; boundary="=-b2mXhRFB+I/U/qMewy+F"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.193 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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


--=-b2mXhRFB+I/U/qMewy+F
Content-Type: text/plain; charset="UTF-8"

On Tue, 2020-09-29 at 13:25 -0700, Nick Desaulniers wrote:
> And I don't remember what ever happened to Joe's script for treewide
> conversion of __section.

Nor do I but here (attached) is the script.

My recollection is there was some problem with mscros
with ## concatenation in some converted uses.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ffe0224b2dc88e091d4d3bb32ee073ffc0585882.camel%40perches.com.

--=-b2mXhRFB+I/U/qMewy+F
Content-Type: application/x-perl; name="convert_section.pl"
Content-Disposition: attachment; filename="convert_section.pl"
Content-Transfer-Encoding: base64

IyBjb252ZXJ0IGxpbnV4LWtlcm5lbCBfX3NlY3Rpb24gdXNlcyBmcm9tIHVucXVvdGVkIHN0cmlu
ZyB0byBxdW90ZWQgc3RyaW5nCiMgY29udmVydCBfX2F0dHJpYnV0ZV9fKChzZWN0aW9uKCJmb28i
KSkpIHRvIF9fc2VjdGlvbigiZm9vIikKIyBjb252ZXJ0IF9fYXR0cmlidXRlX18oKGZvbywgc2Vj
dGlvbj0oImJhciIpLCBiYXopKQojICAgICAgdG8gX19zZWN0aW9uKCJiYXIiKSBhdHRyaWJ1dGUo
KGZvbywgYmF6KSkKIyBjb252ZXJ0IF9fYXR0cmlidXRlX18KCnVzZSBzdHJpY3Q7CgojIHBhdGNo
IGNvbXBpbGVyX2F0dHJpYnV0ZXMuaCB0byByZW1vdmUgcXVvdGluZyBvZiBzZWN0aW9uIG5hbWUK
Cm15ICRyZXN1bHQgPSBxeHtwYXRjaCAtcDEgPDwiRU9GIgogaW5jbHVkZS9saW51eC9jb21waWxl
cl9hdHRyaWJ1dGVzLmggfCAxMiArLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9jb21w
aWxlcl9hdHRyaWJ1dGVzLmggYi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX2F0dHJpYnV0ZXMuaApp
bmRleCA5Y2EwNDBmYTFjYzYuLjg4ZDNlZWExY2JiYSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51
eC9jb21waWxlcl9hdHRyaWJ1dGVzLmgKKysrIGIvaW5jbHVkZS9saW51eC9jb21waWxlcl9hdHRy
aWJ1dGVzLmgKQEAgLTIyNSwyMSArMjI1LDExIEBACiAjZGVmaW5lIF9fcHVyZSAgICAgICAgICAg
ICAgICAgICAgICAgICAgX19hdHRyaWJ1dGVfXygoX19wdXJlX18pKQogCiAvKgotICogTm90ZTog
U2luY2UgdGhpcyBtYWNybyBtYWtlcyB1c2Ugb2YgdGhlICJzdHJpbmdpZmljYXRpb24gb3BlcmF0
b3IiIGAjYCwKLSAqIGEgcXVvdGVkIHN0cmluZyBsaXRlcmFsIHNob3VsZCBub3QgYmUgcGFzc2Vk
IHRvIGl0LiBlZy4gcHJlZmVyOgotICogICAgIF9fc2VjdGlvbiguZm9vKQotICogdG86Ci0gKiAg
ICAgX19zZWN0aW9uKCIuZm9vIikKLSAqIHVubGVzcyB0aGUgc2VjdGlvbiBuYW1lIGlzIGR5bmFt
aWNhbGx5IGJ1aWx0IHVwLCBpbiB3aGljaCBjYXNlIHRoZQotICogdmVyYm9zZSBfX2F0dHJpYnV0
ZV9fKChfX3NlY3Rpb25fXygiLmZvbyIgeCkpKSBzaG91bGQgYmUgcHJlZmVycmVkLgotICoKLSAq
IFNlZSBhbHNvOiBodHRwczovL2J1Z3MubGx2bS5vcmcvc2hvd19idWcuY2dpP2lkPTQyOTUwCi0g
KgogICogICBnY2M6IGh0dHBzOi8vZ2NjLmdudS5vcmcvb25saW5lZG9jcy9nY2MvQ29tbW9uLUZ1
bmN0aW9uLUF0dHJpYnV0ZXMuaHRtbCNpbmRleC1zZWN0aW9uLWZ1bmN0aW9uLWF0dHJpYnV0ZQog
ICogICBnY2M6IGh0dHBzOi8vZ2NjLmdudS5vcmcvb25saW5lZG9jcy9nY2MvQ29tbW9uLVZhcmlh
YmxlLUF0dHJpYnV0ZXMuaHRtbCNpbmRleC1zZWN0aW9uLXZhcmlhYmxlLWF0dHJpYnV0ZQogICog
Y2xhbmc6IGh0dHBzOi8vY2xhbmcubGx2bS5vcmcvZG9jcy9BdHRyaWJ1dGVSZWZlcmVuY2UuaHRt
bCNzZWN0aW9uLWRlY2xzcGVjLWFsbG9jYXRlCiAgKi8KLSNkZWZpbmUgX19zZWN0aW9uKFMpICAg
ICAgICAgICAgICAgICAgICBfX2F0dHJpYnV0ZV9fKChfX3NlY3Rpb25fXygjUykpKQorI2RlZmlu
ZSBfX3NlY3Rpb24oc2VjdGlvbikgICAgICAgICAgICAgIF9fYXR0cmlidXRlX18oKF9fc2VjdGlv
bl9fKHNlY3Rpb24pKSkKIAogLyoKICAqICAgZ2NjOiBodHRwczovL2djYy5nbnUub3JnL29ubGlu
ZWRvY3MvZ2NjL0NvbW1vbi1GdW5jdGlvbi1BdHRyaWJ1dGVzLmh0bWwjaW5kZXgtdW51c2VkLWZ1
bmN0aW9uLWF0dHJpYnV0ZQpFT0Z9OwoKIyBHZXQgdGhlIGxpc3Qgb2YgZmlsZXMgdG8gbW9kaWZ5
IChjb250YWlucyBfX3NlY3Rpb24gb3IgX19hdHRyaWJ1dGVfXy4qc2VjdGlvbgojIChpZ25vcmUg
c2NyaXB0cywgdG9vbHMsIHVhcGksIGFuZCBjb21waWxlcl9hdHRyaWJ1dGVzLmgpCgpteSAkb3V0
cHV0ID0gYGdpdCBncmVwIC0tbmFtZS1vbmx5IC1QICIoPzpcXGJfX3NlY3Rpb25cXGJcfFxcYl9f
YXR0cmlidXRlX19cXGIuKnNlY3Rpb24pIiB8IGdyZXAgLXZQICdeKD86aW5jbHVkZS9saW51eC9j
b21waWxlcl9hdHRyaWJ1dGVzXFwuaHxzY3JpcHRzL3x0b29scy98L3VhcGkvKSdgOwpteSBAZmls
ZXMgPSBzcGxpdCgiXG4iLCAkb3V0cHV0KTsKCiMgTW9kaWZ5IGVhY2ggcG9zc2libGUgZmlsZQpm
b3JlYWNoIChAZmlsZXMpIHsKICAgIGNob21wOwogICAgbXkgJGZpbGUgPSAkXzsKCiAgICAjIHJl
YWQgdGhlIG9yaWdpbmFsIGZpbGUKICAgIG9wZW4oRkgsICc8JywgJGZpbGUpIG9yIGRpZSAkITsK
ICAgIG15IEBsaW5lcyA9IDxGSD47CiAgICBjbG9zZSBGSDsKCiAgICAjIHdyaXRlIHRoZSBtb2Rp
ZmllZCBmaWxlIGxpbmUgYnkgbGluZQogICAgb3BlbiAoRkgsICc+JywgJGZpbGUpIG9yIGRpZSAk
ITsKICAgIGZvcmVhY2ggbXkgJGxpbmUgKEBsaW5lcykgewoJY2hvbXAgJGxpbmU7CglteSAkbmV3
bGluZSA9ICRsaW5lOwoKCSMgQ29udmVydCBfX3NlY3Rpb24oZm9vKSB0byBfX3NlY3Rpb24oImZv
byIpCgkjIGlmICJmb28iIHVzZXMgdG9rZW4gcGFzdGluZywgcHJlIGFuZCBwb3N0IHRva2VucyBh
cmUgYWxzbyBxdW90ZWQKCWlmICgkbGluZSA9fiBtL1xiX19zZWN0aW9uXHMqXChccyooPyEiKShb
XlwpXSspXCkvKSB7CgkgICAgbXkgJG9sZHNlY3Rpb24gPSAkMTsKCSAgICBteSAkbmV3c2VjdGlv
biA9ICQxOwoJICAgIGlmICgkb2xkc2VjdGlvbiA9fiAvKC4qKSMjKC4qKSMjKC4qKS8pIHsKCQkk
bmV3c2VjdGlvbiA9ICciJyAuIHRyaW0oJDEpIC4gJyIgIyMgJyAuIHRyaW0oJDIpIC4gJyAjIyAi
JyAuIHRyaW0oJDMpIC4gJyInOwoJICAgIH0gZWxzZSB7CgkJJG5ld3NlY3Rpb24gPSAnIicgLiB0
cmltKCRvbGRzZWN0aW9uKSAuICciJzsKCSAgICB9CgkgICAgJG5ld2xpbmUgPX4gcy9fX3NlY3Rp
b25ccypcKFxzKlxRJG9sZHNlY3Rpb25cRVxzKlwpL19fc2VjdGlvbigkbmV3c2VjdGlvbikvOwoJ
fQoKCSMgY29udmVydCBfX2F0dHJpYnV0ZV9fKChzZWN0aW9uKCJmb28iKSkpIHRvIF9fc2VjdGlv
bigiZm9vIikKCSRuZXdsaW5lID1+IHMvXGJfX2F0dHJpYnV0ZV9fXHMqXChccypcKFxzKl8qc2Vj
dGlvbl8qXHMqXChccyooIlteIl0rIilccypcKVxzKlwpXHMqXCkvX19zZWN0aW9uKCQxKS87CgoJ
IyBjb252ZXJ0IF9fYXR0cmlidXRlX18oKGZvbywgc2VjdGlvbj0oImJhciIpLCBiYXopKQoJIyB0
byBfX3NlY3Rpb24oImJhciIpIGF0dHJpYnV0ZSgoZm9vLCBiYXopKQoJaWYgKCRuZXdsaW5lID1+
IC8oXGJfX2F0dHJpYnV0ZV9fXHMqXChccypcKChbXixfXSspPyhccyosP1xzKl8qc2VjdGlvbl8q
XHMqXChccyooIlteIl0rIilccypcKVxzKiw/XHMqKSguKilccypcKVxzKlwpKS8pIHsKCSAgICBt
eSAkc2VjdGlvbiA9ICQzOwoJICAgIG15ICRjb21tYSA9ICIiOwoJICAgICRjb21tYSA9ICIsICIg
aWYgKCRzZWN0aW9uID1+IC9eXHMqLC8gJiYgJHNlY3Rpb24gPX4gLyxccyokLyk7CgkgICAgJG5l
d2xpbmUgPX4gcy9cUSRzZWN0aW9uXEUvJGNvbW1hLzsKCSAgICAkc2VjdGlvbiA9fiBzL15bXiJd
Ki8vOwoJICAgICRzZWN0aW9uID1+IHMvXigiW14iXSoiKS4qLyQxLzsKCSAgICAkbmV3bGluZSA9
fiBzL1xiX19hdHRyaWJ1dGVfXy9fX3NlY3Rpb24oJHNlY3Rpb24pIF9fYXR0cmlidXRlX18vOwoJ
fQoKCSMgaWYgdGhlIGxpbmUgZW5kZWQgd2l0aCBhIGxpbmUgY29udGludWF0aW9uIFwsIHRyeSB0
byBtb3ZlIHRoZQoJIyBjb250aW51YXRpb24gdG8gdGhlIHNhbWUgbG9jYXRpb24gYnkgcmVtb3Zp
bmcgb3IgYWRkaW5nIHRhYnMKCWlmICgkbGluZSA9fiAvXFwkLykgewoJICAgIG15ICRvbGVuID0g
bGVuZ3RoKGV4cGFuZF90YWJzKCRsaW5lKSk7CgkgICAgbXkgJG5sZW4gPSBsZW5ndGgoZXhwYW5k
X3RhYnMoJG5ld2xpbmUpKTsKCSAgICBpZiAoJG5ld2xpbmUgPX4gL1x0XFwkLykgewoJCWlmICgk
bmxlbiA+ICRvbGVuKSB7CgkJICAgICRuZXdsaW5lID1+IHMvXHRcXCQvXFwvOwoJCX0gZWxzZSB7
CgkJICAgIHdoaWxlICgkbmxlbiA8ICRvbGVuKSB7CgkJCSRuZXdsaW5lID1+IHMvXFwkL1x0XFwv
OwoJCQkkbmxlbiA9IGxlbmd0aChleHBhbmRfdGFicygkbmV3bGluZSkpOwoJCSAgICB9CgkJfQoJ
ICAgIH0KCX0KCXByaW50IEZIICIkbmV3bGluZVxuIjsKICAgIH0KICAgIGNsb3NlIEZIOwp9Cgoj
IEFuZCBnaXQgY29tbWl0IHRoZSBjaGFuZ2VzCiRyZXN1bHQgPSBxeHtnaXQgY29tbWl0IC1hIC0t
YXV0aG9yPSdKb2UgUGVyY2hlcyA8am9lXEBwZXJjaGVzLmNvbT4nIC1GLSA8PCJFT0YiCnRyZWV3
aWRlOiBDb252ZXJ0IG1hY3JvIGFuZCB1c2VzIG9mIF9fc2VjdGlvbihmb28pIHRvIF9fc2VjdGlv
bigiZm9vIikKClVzZSBhIG1vcmUgZ2VuZXJpYyBmb3JtIGZvciBfX3NlY3Rpb24gdGhhdCByZXF1
aXJlcyBxdW90ZXMgdG8gYXZvaWQKY29tcGxpY2F0aW9ucyB3aXRoIGNsYW5nIGFuZCBnY2MgZGlm
ZmVyZW5jZXMuCgpSZW1vdmUgdGhlIHF1b3RlIG9wZXJhdG9yICMgZnJvbSBjb21waWxlcl9hdHRy
aWJ1dGVzLmggX19zZWN0aW9uIG1hY3JvLgoKQ29udmVydCBhbGwgdW5xdW90ZWQgX19zZWN0aW9u
KGZvbykgdXNlcyB0byBxdW90ZWQgX19zZWN0aW9uKCJmb28iKS4KQWxzbyBjb252ZXJ0IF9fYXR0
cmlidXRlX18oKHNlY3Rpb24oImZvbyIpKSkgdXNlcyB0byBfX3NlY3Rpb24oImZvbyIpCmV2ZW4g
aWYgdGhlIF9fYXR0cmlidXRlX18gaGFzIG11bHRpcGxlIGxpc3QgZW50cnkgZm9ybXMuCgpTaWdu
ZWQtb2ZmLWJ5OiBKb2UgUGVyY2hlcyA8am9lXEBwZXJjaGVzLmNvbT4KRU9GCn07CgojIHV0aWxp
dHkgc3Vicm91dGluZXMKc3ViIHRyaW0gewogICAgbXkgKCRzdHJpbmcpID0gQF87CiAgICAkc3Ry
aW5nID1+IHMvXlxzK3xccyskLy9nOwogICAgcmV0dXJuICRzdHJpbmc7Cn0KCnN1YiBleHBhbmRf
dGFicyB7CiAgICBteSAoJHN0cikgPSBAXzsKCiAgICBteSAkcmVzID0gJyc7CiAgICBteSAkbiA9
IDA7CiAgICBmb3IgbXkgJGMgKHNwbGl0KC8vLCAkc3RyKSkgewoJaWYgKCRjIGVxICJcdCIpIHsK
CSAgICAkcmVzIC49ICcgJzsKCSAgICAkbisrOwoJICAgIGZvciAoOyAoJG4gJSA4KSAhPSAwOyAk
bisrKSB7CgkJJHJlcyAuPSAnICc7CgkgICAgfQoJICAgIG5leHQ7Cgl9CgkkcmVzIC49ICRjOwoJ
JG4rKzsKICAgIH0KCiAgICByZXR1cm4gJHJlczsKfQo=


--=-b2mXhRFB+I/U/qMewy+F--

