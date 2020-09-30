Return-Path: <clang-built-linux+bncBDY3NC743AGBB25A2T5QKGQEQ3AG3ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E6027F5B4
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 01:10:36 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id n10sf618428vsr.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 16:10:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601507436; cv=pass;
        d=google.com; s=arc-20160816;
        b=j618otmmwpHfWBacz2bwzHrKMJFa0rWWCGvR9exRZ19parbqU+iFzQUSaYvwQaWjJH
         1Zt0Mi+KsOSWRNgVqFtQuow1iiamOLZINPNSqoJaQUL+cLfQ+cPas+5x726VxxRTcR07
         9emIie7qBPKMgYZ7ZB8Bq5QBvwNa5rRCtT0gQWTU8Xj2M4K18VUXtj9yqVBSuuP5Hhya
         rTd7zi8w0tR+fa5F/KoxoNIsHJd0byDI4QUQqaeSTo2Z3eXgldS3ZelR1oWpOVV1v0nv
         DgU/FvxuE84MqwcAHdnDR+XB+I2U8Xles4S3m6kxc74xhM6yu3cOmRzOYu6BlhBvC5Tw
         qyrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=CUwIbzSW2t+1CDqwn0PkP4hjP/+h/8h8IKhafOjhAmI=;
        b=WSxv+mnLwVLsSudhVg+6ymzpNFfmpwekpmSMvaSmFFz8LrKX9CDVV6yoM/MZ58FFBj
         wLCYLKzhIGflWUD8e2/6y6OTTNkbQSlrHCGI93f3JbZwzHGXkwNyfJLwB01JyjRsTUks
         sG0Stn18ZJMDy5f+EW1qsJbQgsW5BLWP1iJ8BzLMhYZq5TBacNtX8AvPVY42SxdJ4jh9
         ntvWBskY11TVQqdVSKCx4LzhPGVSmjDUvMTtuzKowQ8LMCfSqTCPYsvvC/cXzRZZpnh+
         q0ScQq48MQWllVXjG71hEE2ulu3jK6Y10j03MXhDsyV+o8fNTE5j54l2pa+mMy/arbAp
         d8HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.227 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CUwIbzSW2t+1CDqwn0PkP4hjP/+h/8h8IKhafOjhAmI=;
        b=MqF7Wa2/9UA2jIBz0Yg4JHPww9M41a3B4kGnOBacA/ZZ6SDut+QIafxpUrlKF3w+Ky
         uMgIxW5k2TqXcHunULivwyS5H44OVjU5kuZHknxEUSNbghHI5M4PwsUIjc9QwRBfsOfl
         AoNVOZkmaxRcvwYeLVJV3baczTDz9lblgkxzg+q92AFJMyoGnMirnJz0ljvtwJoo/dXB
         sy+nEtjENyMdBXiQYYt/XKw8obBPoehQZGe8Nk4LCEXfAOHtwojZwxJPTd/MhRVeZsR4
         WMAgjb3wrjYcoYCctVZU678XvJFN8/eM+8s7v0k4s2sg/OYuCLIe4E4XIR0y8zN33hR2
         Y4Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CUwIbzSW2t+1CDqwn0PkP4hjP/+h/8h8IKhafOjhAmI=;
        b=gofimNhYqU0nLFcNa85lLjNkVSygCHcqvXdxcOrlUL/BVzyd1d1jplvPB2eevDAo8j
         x92CSeJRp7rwiPWH388bHbFQNpsZZBIW8eJah7BpO/uT5cH9JrjhDSyVQXYnoHtqymre
         qoWFAwICVyL2i+ct3m+QT4AFpXst9aGYqZR1X+LdYZ0RODY0keOMhufC5+swmeALr16n
         ItBLJfZo/PxhRWASwNjrl1/IjFiA/FVme+zIahE2U4SAzyHtAvFl/tqUu8J09twqNgND
         jdqpcA9kN9NaWEFKY0Mdl//OpVo/EfVDwnHyfcgL9fhTKdh45oameFUjMY1mWzl6scxZ
         JRIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oCsKs2ibiSuhJuEXoJpQ7TvY61JRy7Auzg8JlIsxYhWwDuRvR
	L5RWSwZF64Ml5LYM0OCvj54=
X-Google-Smtp-Source: ABdhPJyDYVhwVHSKz9xN91Z0DEpVVzw1kWHu8fUOw76uC582btWc5sJkUay22YvnzU/pXom77+Nq5w==
X-Received: by 2002:ab0:768:: with SMTP id h95mr3281024uah.23.1601507435968;
        Wed, 30 Sep 2020 16:10:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2643:: with SMTP id m64ls435201vsm.3.gmail; Wed, 30 Sep
 2020 16:10:35 -0700 (PDT)
X-Received: by 2002:a67:c887:: with SMTP id v7mr3364113vsk.49.1601507435394;
        Wed, 30 Sep 2020 16:10:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601507435; cv=none;
        d=google.com; s=arc-20160816;
        b=v//aBa//bbbklXw9/CN1Sa/y48XK6tF6aIGTMfACawn63TXgScZK/oSCKDiLLtSonG
         VMSrKLu4IqF7CH+XE4h+eEQw1YQuoG0QBxtNuK5IMRCth9taD77k762MugDOsT3psm1t
         qsSay2CeDSRqSa5AbOhPgEKjfYjh/vfgqR4erfMJgrVNrJtsi89wf+eCH99e00opPtn2
         +sxqyGh/03r/vCQ6D2VBGo374wQUqNzr+En5H7SzcL4IpXWalDG4F9Rp3v44l/891n/M
         lRwT5DhQClLVjYcQzvCPafMYMtwIbM/nxi9rSFudUQP6lyvIXDw4loz2ersZBoIArkKC
         Wa+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id;
        bh=7sC1bG8KmxNdlq4xFiKDMacCxPeH0IkO228KVkgaX74=;
        b=BSojrC6lvL3e8q93EGfUf3poINUGP0nVD+o5ZeWg346pShhz5DvbEwfa5KlReIMo4Q
         tUrrbxZXzFY1WqUJSfaH/Tn0PrjYBMpRCoTKoKIDrZyxKrgQ9TcGrJrfu1qznJ1hrdmL
         B5L7dII2NzQFenXqVdoT2X+zyjt4fuocT21CLUGvp7EtbWcuaJ4T0CLJo03cV6uUojEi
         M4COnYb3hCQsw3NBFN7TSub/us57tLxDCpXKQ2nfDe9kDzhWnHkb4+kcvwxj8usjw6wn
         vWUjUNL7tzpoSYfzgTdDJ+ZD+ZSd9Jqd+PpBchxtoHNqV9V+pptsjsZCBct6XW8b2PSV
         BiSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.227 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0227.hostedemail.com. [216.40.44.227])
        by gmr-mx.google.com with ESMTPS id y65si194699vkf.1.2020.09.30.16.10.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 16:10:35 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.227 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.227;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 8F5C1100E7B46;
	Wed, 30 Sep 2020 23:10:34 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:1:41:355:379:871:988:989:1000:1260:1313:1314:1345:1359:1437:1516:1518:1533:1536:1575:1594:1711:1714:1730:1747:1764:1777:1792:2393:2559:2562:2895:3138:3139:3140:3141:3142:3865:3867:3870:3874:5007:6747:6748:7281:10004:10400:10848:11604:11658:11914:12196:12297:13019:13439:14659:21080:21433:21627:30054:30070,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: bead66_560aee427196
X-Filterd-Recvd-Size: 10014
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Wed, 30 Sep 2020 23:10:32 +0000 (UTC)
Message-ID: <75393e5ddc272dc7403de74d645e6c6e0f4e70eb.camel@perches.com>
Subject: convert_section.pl attached
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar
	 <nivedita@alum.mit.edu>
Cc: Andrew Morton <akpm@linux-foundation.org>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Luc Van Oostenryck
 <luc.vanoostenryck@gmail.com>, Nathan Chancellor
 <natechancellor@gmail.com>,  linux-sparse@vger.kernel.org, LKML
 <linux-kernel@vger.kernel.org>,  clang-built-linux
 <clang-built-linux@googlegroups.com>, Linus Torvalds
 <torvalds@linux-foundation.org>
Date: Wed, 30 Sep 2020 16:10:31 -0700
In-Reply-To: <0e582a7f5144a33f465978d97701f9b3dcc377f3.camel@perches.com>
References: <20200929194318.548707-1-ndesaulniers@google.com>
	 <20200929200801.GA2668747@rani.riverdale.lan>
	 <CAKwvOdm=H3GDOPo-dbgsqH7UXzC1twz1h2Rdcidh8OXtFtCY4Q@mail.gmail.com>
	 <ffe0224b2dc88e091d4d3bb32ee073ffc0585882.camel@perches.com>
	 <0e582a7f5144a33f465978d97701f9b3dcc377f3.camel@perches.com>
Content-Type: multipart/mixed; boundary="=-C0QQNuhA3ALce9aKym+T"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.227 is neither permitted nor denied by best guess
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


--=-C0QQNuhA3ALce9aKym+T
Content-Type: text/plain; charset="UTF-8"

Here's a new version that does not update arch/powerpc/boot/ files
to avoid the defective conversions that Nick found in powerpc.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/75393e5ddc272dc7403de74d645e6c6e0f4e70eb.camel%40perches.com.

--=-C0QQNuhA3ALce9aKym+T
Content-Type: application/x-perl; name="convert_section.pl"
Content-Disposition: attachment; filename="convert_section.pl"
Content-Transfer-Encoding: base64

IyEvdXNyL2Jpbi9lbnYgcGVybAoKIyBjb252ZXJ0IGxpbnV4LWtlcm5lbCBfX3NlY3Rpb24gdXNl
cyBmcm9tIHVucXVvdGVkIHN0cmluZyB0byBxdW90ZWQgc3RyaW5nCiMgY29udmVydCBfX2F0dHJp
YnV0ZV9fKChzZWN0aW9uKCJmb28iKSkpIHRvIF9fc2VjdGlvbigiZm9vIikKIyBjb252ZXJ0IF9f
YXR0cmlidXRlX18oKGZvbywgc2VjdGlvbj0oImJhciIpLCBiYXopKQojICAgICAgdG8gX19zZWN0
aW9uKCJiYXIiKSBhdHRyaWJ1dGUoKGZvbywgYmF6KSkKIyBjb252ZXJ0IF9fYXR0cmlidXRlX18K
CnVzZSBzdHJpY3Q7CgojIHBhdGNoIGNvbXBpbGVyX2F0dHJpYnV0ZXMuaCB0byByZW1vdmUgcXVv
dGluZyBvZiBzZWN0aW9uIG5hbWUKCm15ICRyZXN1bHQgPSBgcGF0Y2ggLXAxIDw8IkVPRiIKIGlu
Y2x1ZGUvbGludXgvY29tcGlsZXJfYXR0cmlidXRlcy5oIHwgMiArLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9jb21waWxlcl9hdHRyaWJ1dGVzLmggYi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX2F0dHJpYnV0
ZXMuaAppbmRleCBlYTdiNzU2YjFjOGYuLmIyYTNmNGY2NDFhNyAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS9saW51eC9jb21waWxlcl9hdHRyaWJ1dGVzLmgKKysrIGIvaW5jbHVkZS9saW51eC9jb21waWxl
cl9hdHRyaWJ1dGVzLmgKQEAgLTI1NCw3ICsyNTQsNyBAQAogICogICBnY2M6IGh0dHBzOi8vZ2Nj
LmdudS5vcmcvb25saW5lZG9jcy9nY2MvQ29tbW9uLVZhcmlhYmxlLUF0dHJpYnV0ZXMuaHRtbCNp
bmRleC1zZWN0aW9uLXZhcmlhYmxlLWF0dHJpYnV0ZQogICogY2xhbmc6IGh0dHBzOi8vY2xhbmcu
bGx2bS5vcmcvZG9jcy9BdHRyaWJ1dGVSZWZlcmVuY2UuaHRtbCNzZWN0aW9uLWRlY2xzcGVjLWFs
bG9jYXRlCiAgKi8KLSNkZWZpbmUgX19zZWN0aW9uKFMpICAgICAgICAgICAgICAgICAgICBfX2F0
dHJpYnV0ZV9fKChfX3NlY3Rpb25fXygjUykpKQorI2RlZmluZSBfX3NlY3Rpb24oc2VjdGlvbikg
ICAgICAgICAgICAgIF9fYXR0cmlidXRlX18oKF9fc2VjdGlvbl9fKHNlY3Rpb24pKSkKIAogLyoK
ICAqICAgZ2NjOiBodHRwczovL2djYy5nbnUub3JnL29ubGluZWRvY3MvZ2NjL0NvbW1vbi1GdW5j
dGlvbi1BdHRyaWJ1dGVzLmh0bWwjaW5kZXgtdW51c2VkLWZ1bmN0aW9uLWF0dHJpYnV0ZQpFT0Zg
OwoKIyBwYXRjaCBzY3JpcHRzL21vZC9tb2Rwb3N0LmMgdG8gYWRkIHF1b3Rpbmcgb2Ygc2VjdGlv
biBuYW1lCgpteSAkcmVzdWx0ID0gYHBhdGNoIC1wMSA8PCJFT0YiCiBzY3JpcHRzL21vZC9tb2Rw
b3N0LmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9tb2QvbW9kcG9zdC5jIGIvc2NyaXB0cy9tb2Qv
bW9kcG9zdC5jCmluZGV4IDY5MzQxYjM2ZjI3MS4uZjg4MmNlMGQ5MzI3IDEwMDY0NAotLS0gYS9z
Y3JpcHRzL21vZC9tb2Rwb3N0LmMKKysrIGIvc2NyaXB0cy9tb2QvbW9kcG9zdC5jCkBAIC0yMjU0
LDcgKzIyNTQsNyBAQCBzdGF0aWMgdm9pZCBhZGRfaGVhZGVyKHN0cnVjdCBidWZmZXIgKmIsIHN0
cnVjdCBtb2R1bGUgKm1vZCkKIAlidWZfcHJpbnRmKGIsICJNT0RVTEVfSU5GTyhuYW1lLCBLQlVJ
TERfTU9ETkFNRSk7XFxuIik7CiAJYnVmX3ByaW50ZihiLCAiXFxuIik7CiAJYnVmX3ByaW50Zihi
LCAiX192aXNpYmxlIHN0cnVjdCBtb2R1bGUgX190aGlzX21vZHVsZVxcbiIpOwotCWJ1Zl9wcmlu
dGYoYiwgIl9fc2VjdGlvbiguZ251LmxpbmtvbmNlLnRoaXNfbW9kdWxlKSA9IHtcXG4iKTsKKwli
dWZfcHJpbnRmKGIsICJfX3NlY3Rpb24oXFwiLmdudS5saW5rb25jZS50aGlzX21vZHVsZVxcIikg
PSB7XFxuIik7CiAJYnVmX3ByaW50ZihiLCAiXFx0Lm5hbWUgPSBLQlVJTERfTU9ETkFNRSxcXG4i
KTsKIAlpZiAobW9kLT5oYXNfaW5pdCkKIAkJYnVmX3ByaW50ZihiLCAiXFx0LmluaXQgPSBpbml0
X21vZHVsZSxcXG4iKTsKQEAgLTIzMDgsNyArMjMwOCw3IEBAIHN0YXRpYyBpbnQgYWRkX3ZlcnNp
b25zKHN0cnVjdCBidWZmZXIgKmIsIHN0cnVjdCBtb2R1bGUgKm1vZCkKIAogCWJ1Zl9wcmludGYo
YiwgIlxcbiIpOwogCWJ1Zl9wcmludGYoYiwgInN0YXRpYyBjb25zdCBzdHJ1Y3QgbW9kdmVyc2lv
bl9pbmZvIF9fX192ZXJzaW9uc1tdXFxuIik7Ci0JYnVmX3ByaW50ZihiLCAiX191c2VkIF9fc2Vj
dGlvbihfX3ZlcnNpb25zKSA9IHtcXG4iKTsKKwlidWZfcHJpbnRmKGIsICJfX3VzZWQgX19zZWN0
aW9uKFxcIl9fdmVyc2lvbnNcXCIpID0ge1xcbiIpOwogCiAJZm9yIChzID0gbW9kLT51bnJlczsg
czsgcyA9IHMtPm5leHQpIHsKIAkJaWYgKCFzLT5tb2R1bGUpCkVPRmA7CgojIEdldCB0aGUgbGlz
dCBvZiBmaWxlcyB0byBtb2RpZnkgKGNvbnRhaW5zIF9fc2VjdGlvbiBvciBfX2F0dHJpYnV0ZV9f
LipzZWN0aW9uCiMgKGlnbm9yZSBzY3JpcHRzLCB0b29scywgdWFwaSwgYXJjaC9wb3dlcnBjL2Jv
b3QgYW5kIGNvbXBpbGVyX2F0dHJpYnV0ZXMuaCkKCm15ICRvdXRwdXQgPSBgZ2l0IGdyZXAgLS1u
YW1lLW9ubHkgLVAgIig/OlxcYl9fc2VjdGlvblxcYlx8XFxiX19hdHRyaWJ1dGVfX1xcYi4qc2Vj
dGlvbikiIHwgZ3JlcCAtdlAgJ14oPzppbmNsdWRlL2xpbnV4L2NvbXBpbGVyX2F0dHJpYnV0ZXNc
XC5ofHNjcmlwdHMvfHRvb2xzL3wvdWFwaS98YXJjaC9wb3dlcnBjL2Jvb3QvKSdgOwpteSBAZmls
ZXMgPSBzcGxpdCgiXG4iLCAkb3V0cHV0KTsKIyBBZGQgdGhlIG9ubHkgZmlsZSBpbiB0b29scyB0
aGF0IG5lZWRzIGNvbnZlcnNpb24KcHVzaCAoQGZpbGVzLCAidG9vbHMvaW5jbHVkZS9saW51eC9v
Ymp0b29sLmgiKTsKCiMgTW9kaWZ5IGVhY2ggcG9zc2libGUgZmlsZQpmb3JlYWNoIChAZmlsZXMp
IHsKICAgIGNob21wOwogICAgbXkgJGZpbGUgPSAkXzsKCiAgICAjIHJlYWQgdGhlIG9yaWdpbmFs
IGZpbGUKICAgIG9wZW4oRkgsICc8JywgJGZpbGUpIG9yIGRpZSAkITsKICAgIG15IEBsaW5lcyA9
IDxGSD47CiAgICBjbG9zZSBGSDsKCiAgICAjIHdyaXRlIHRoZSBtb2RpZmllZCBmaWxlIGxpbmUg
YnkgbGluZQogICAgb3BlbiAoRkgsICc+JywgJGZpbGUpIG9yIGRpZSAkITsKICAgIGZvcmVhY2gg
bXkgJGxpbmUgKEBsaW5lcykgewoJY2hvbXAgJGxpbmU7CglteSAkbmV3bGluZSA9ICRsaW5lOwoK
CSMgQ29udmVydCBfX3NlY3Rpb24oZm9vKSB0byBfX3NlY3Rpb24oImZvbyIpCgkjIGlmICJmb28i
IHVzZXMgbXVsdGlwbGUgdG9rZW4gcGFzdGluZywKCSMgICBwcmUgYW5kIHBvc3QgdG9rZW5zIHJl
bW92ZWQgYW5kIGEgc2luZ2xlICMgaXMgdXNlZCB0aGVuICIgIiBhZGRlZAoJIyAgIGUuZy46ICBm
b28gIyMgYmFyICMjIGJheiBiZWNvbWVzICJmb28iICNiYXIgImJheiIKCWlmICgkbGluZSA9fiBt
L1xiX19zZWN0aW9uXHMqXChccyooPyEiKShbXlwpXSspXCkvKSB7CgkgICAgbXkgJG9sZHNlY3Rp
b24gPSAkMTsKCSAgICBteSAkbmV3c2VjdGlvbiA9ICQxOwoJICAgIGlmICgkb2xkc2VjdGlvbiA9
fiAvKC4qKSMjKC4qKSMjKC4qKS8pIHsKCQkkbmV3c2VjdGlvbiA9ICciJyAuIHRyaW0oJDEpIC4g
JyIgIycgLiB0cmltKCQyKSAuICcgIicgLiB0cmltKCQzKSAuICciJzsKCSAgICB9IGVsc2UgewoJ
CSRuZXdzZWN0aW9uID0gJyInIC4gdHJpbSgkb2xkc2VjdGlvbikgLiAnIic7CgkgICAgfQoJICAg
ICRuZXdsaW5lID1+IHMvX19zZWN0aW9uXHMqXChccypcUSRvbGRzZWN0aW9uXEVccypcKS9fX3Nl
Y3Rpb24oJG5ld3NlY3Rpb24pLzsKCX0KCgkjIGNvbnZlcnQgX19hdHRyaWJ1dGVfXygoc2VjdGlv
bigiZm9vIikpKSB0byBfX3NlY3Rpb24oImZvbyIpCgkkbmV3bGluZSA9fiBzL1xiX19hdHRyaWJ1
dGVfX1xzKlwoXHMqXChccypfKnNlY3Rpb25fKlxzKlwoXHMqKCJbXiJdKyIpXHMqXClccypcKVxz
KlwpL19fc2VjdGlvbigkMSkvOwoKCSMgY29udmVydCBfX2F0dHJpYnV0ZV9fKChmb28sIHNlY3Rp
b249KCJiYXIiKSwgYmF6KSkKCSMgdG8gX19zZWN0aW9uKCJiYXIiKSBhdHRyaWJ1dGUoKGZvbywg
YmF6KSkKCWlmICgkbmV3bGluZSA9fiAvKFxiX19hdHRyaWJ1dGVfX1xzKlwoXHMqXCgoW14sX10r
KT8oXHMqLD9ccypfKnNlY3Rpb25fKlxzKlwoXHMqKCJbXiJdKyIpXHMqXClccyosP1xzKikoLiop
XHMqXClccypcKSkvKSB7CgkgICAgbXkgJHNlY3Rpb24gPSAkMzsKCSAgICBteSAkY29tbWEgPSAi
IjsKCSAgICAkY29tbWEgPSAiLCAiIGlmICgkc2VjdGlvbiA9fiAvXlxzKiwvICYmICRzZWN0aW9u
ID1+IC8sXHMqJC8pOwoJICAgICRuZXdsaW5lID1+IHMvXFEkc2VjdGlvblxFLyRjb21tYS87Cgkg
ICAgJHNlY3Rpb24gPX4gcy9eW14iXSovLzsKCSAgICAkc2VjdGlvbiA9fiBzL14oIlteIl0qIiku
Ki8kMS87CgkgICAgJG5ld2xpbmUgPX4gcy9cYl9fYXR0cmlidXRlX18vX19zZWN0aW9uKCRzZWN0
aW9uKSBfX2F0dHJpYnV0ZV9fLzsKCX0KCgkjIGlmIHRoZSBsaW5lIGVuZGVkIHdpdGggYSBsaW5l
IGNvbnRpbnVhdGlvbiBcLCB0cnkgdG8gbW92ZSB0aGUKCSMgY29udGludWF0aW9uIHRvIHRoZSBz
YW1lIGxvY2F0aW9uIGJ5IHJlbW92aW5nIG9yIGFkZGluZyB0YWJzCglpZiAoJGxpbmUgPX4gL1xc
JC8pIHsKCSAgICBteSAkb2xlbiA9IGxlbmd0aChleHBhbmRfdGFicygkbGluZSkpOwoJICAgIG15
ICRubGVuID0gbGVuZ3RoKGV4cGFuZF90YWJzKCRuZXdsaW5lKSk7CgkgICAgaWYgKCRuZXdsaW5l
ID1+IC9cdFxcJC8pIHsKCQlpZiAoJG5sZW4gPiAkb2xlbikgewoJCSAgICAkbmV3bGluZSA9fiBz
L1x0XFwkL1xcLzsKCQl9IGVsc2UgewoJCSAgICB3aGlsZSAoJG5sZW4gPCAkb2xlbikgewoJCQkk
bmV3bGluZSA9fiBzL1xcJC9cdFxcLzsKCQkJJG5sZW4gPSBsZW5ndGgoZXhwYW5kX3RhYnMoJG5l
d2xpbmUpKTsKCQkgICAgfQoJCX0KCSAgICB9Cgl9CglwcmludCBGSCAiJG5ld2xpbmVcbiI7CiAg
ICB9CiAgICBjbG9zZSBGSDsKfQoKIyBBbmQgZ2l0IGNvbW1pdCB0aGUgY2hhbmdlcwokcmVzdWx0
ID0gcXh7Z2l0IGNvbW1pdCAtYSAtLWF1dGhvcj0nSm9lIFBlcmNoZXMgPGpvZVxAcGVyY2hlcy5j
b20+JyAtRi0gPDwiRU9GIgp0cmVld2lkZTogQ29udmVydCBtYWNybyBhbmQgdXNlcyBvZiBfX3Nl
Y3Rpb24oZm9vKSB0byBfX3NlY3Rpb24oImZvbyIpCgpVc2UgYSBtb3JlIGdlbmVyaWMgZm9ybSBm
b3IgX19zZWN0aW9uIHRoYXQgcmVxdWlyZXMgcXVvdGVzIHRvIGF2b2lkCmNvbXBsaWNhdGlvbnMg
d2l0aCBjbGFuZyBhbmQgZ2NjIGRpZmZlcmVuY2VzLgoKUmVtb3ZlIHRoZSBxdW90ZSBvcGVyYXRv
ciAjIGZyb20gY29tcGlsZXJfYXR0cmlidXRlcy5oIF9fc2VjdGlvbiBtYWNyby4KCkNvbnZlcnQg
YWxsIHVucXVvdGVkIF9fc2VjdGlvbihmb28pIHVzZXMgdG8gcXVvdGVkIF9fc2VjdGlvbigiZm9v
IikuCkFsc28gY29udmVydCBfX2F0dHJpYnV0ZV9fKChzZWN0aW9uKCJmb28iKSkpIHVzZXMgdG8g
X19zZWN0aW9uKCJmb28iKQpldmVuIGlmIHRoZSBfX2F0dHJpYnV0ZV9fIGhhcyBtdWx0aXBsZSBs
aXN0IGVudHJ5IGZvcm1zLgoKU2lnbmVkLW9mZi1ieTogSm9lIFBlcmNoZXMgPGpvZVxAcGVyY2hl
cy5jb20+CkVPRgp9OwoKIyB1dGlsaXR5IHN1YnJvdXRpbmVzCnN1YiB0cmltIHsKICAgIG15ICgk
c3RyaW5nKSA9IEBfOwogICAgJHN0cmluZyA9fiBzL15ccyt8XHMrJC8vZzsKICAgIHJldHVybiAk
c3RyaW5nOwp9CgpzdWIgZXhwYW5kX3RhYnMgewogICAgbXkgKCRzdHIpID0gQF87CgogICAgbXkg
JHJlcyA9ICcnOwogICAgbXkgJG4gPSAwOwogICAgZm9yIG15ICRjIChzcGxpdCgvLywgJHN0cikp
IHsKCWlmICgkYyBlcSAiXHQiKSB7CgkgICAgJHJlcyAuPSAnICc7CgkgICAgJG4rKzsKCSAgICBm
b3IgKDsgKCRuICUgOCkgIT0gMDsgJG4rKykgewoJCSRyZXMgLj0gJyAnOwoJICAgIH0KCSAgICBu
ZXh0OwoJfQoJJHJlcyAuPSAkYzsKCSRuKys7CiAgICB9CgogICAgcmV0dXJuICRyZXM7Cn0K


--=-C0QQNuhA3ALce9aKym+T--

