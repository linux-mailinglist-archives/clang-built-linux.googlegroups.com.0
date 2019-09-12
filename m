Return-Path: <clang-built-linux+bncBDY3NC743AGBBN5T5PVQKGQEAKSKVKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 918C7B16BC
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 01:50:17 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id t10sf15159144plr.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 16:50:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568332216; cv=pass;
        d=google.com; s=arc-20160816;
        b=F4OyFlBfaKO3jqx0S+lHJbS+Szd2kMiH5ttJBOu8g7Cky4t1M3AcLlGGY7J5Kleuni
         0fHZvcQHRfw7k9nFXeRpkYZXcj2xYmpVfTDRumEE+VANROdEQTr5xXnokK61MLinZbPc
         HajsD4yd57xvjeSw0zWSsF7Rxg0mUBLrw+x19WqpzpHxXU922uNws58aUFYf+4/eaCCR
         MYBPTzD4aU02Ivm1FsZAvdwHXQQdULMMNpwbaYL5iqk1brdJwmdphC7Si7+zAtwN5kgl
         X0ZJnEJTvsGzOnIFMWCg5oZ3BQFQyStJI3y3k3Nx+Auwv4ok3Q3Eh8JwD1QkYXRwpV/f
         NMqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=/VYjSsA/oLfe0F8EaQUM16+9OzEd/Q1FoLsOaPa4pqo=;
        b=Sn/Mwd3VF9c74bg2SQx0MfPlQeJAha2GRLmmKMFaM/xtQYANCFJg6vZQe3PSn6g4yz
         HNVXFexVf2qvASpvRfjs3bPWt+9u5hM36no8W7vVmDIyzPROzSN5w5zByjs18UKVDhxg
         SaV/FeDTuVaUorUalnI++zQP11UA0UvXwKS/MPPFVbyrmc4CEvXxROoAn7C31nQOqxKA
         bbe6MRNmvpen9Wh1B0yeAt8h0AIHUQdIWZQYeUNaphdK9CYyoukw6dZS4aTPhEyjwLeK
         BuL3UnyNJecxLpEwAV0MqmOXgfwVoD9Q31uSHIefswkEHSMxI4FKTIQMVDiC6hkVtoHR
         7CSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.17 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/VYjSsA/oLfe0F8EaQUM16+9OzEd/Q1FoLsOaPa4pqo=;
        b=TqtiyUrYpgC+pJQA3MTQ81rWkQmkzjr6Nbx0hrKSXO2VHT8/PU1+1Q0SsE4qUvhEZF
         ZI8AGS5Pr/pUk87TtJBOCZenz1AdYmZ9ySRAEJR6K3xVsGJDooIV5uA3AdLa+U7T1j5a
         F7ZuLi514qEyQwlMKPQMY8xDN67lhhQIvah6KvcNZc6uxrkWOdOa5mBYUEaQQknK/ndT
         awcEcCbHQcmGCrucfE9Wasz76valLhkYJGv8KNBM1CyyMQXuMNv1dwHZn617Hfklxtj8
         0MrfHxEdEKFhnjkeHbM9XImuXM/VP5jOqFfaaq4IjOiZBoBDm6RGJ4Hhmp3GL8utBTNI
         wnCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/VYjSsA/oLfe0F8EaQUM16+9OzEd/Q1FoLsOaPa4pqo=;
        b=KoB9u2aeEyuxNypI8OiELndFwGmgYI2uCEwVHZIsaQ2IW6L1M8cX2Mz+FxNWy7QFhk
         q9lieSzNL61FyeBwgWtw3JHDZJYTFdHIfDjxBpwPRFevdFcx02M7ESE+ckLLb3mBP0C1
         4MUJDfj1BBGByxegIRtc3tJ7BijR28ZOGSCsd2orMHpnE0TMXb04FGPNQ8wEusm3qaro
         VhVwLxdVuABKObIltwkNdATgjnKvKHh18b6Jxq3HDjdib8TOKBl3l3zjqfp20YQNv8yy
         PGFQqFMIhcW5DyQmRSy77UugYm3f6lbi6PLLaxC+BgetFnWof5RuOhDXdWXuqueOWsnU
         /A9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWoJbZMGh8aOZwzD3EcANzvmfde5BeixQf0b1umUa+JWjs2lxKD
	EyhGiV/pjjQuoWmnKKyIGHk=
X-Google-Smtp-Source: APXvYqwhDdhljxAO4b9Ibg5HghSN/VFOTCD1tAmp7xxhbXmBHmzXXGnELy/xp1W8HyW47yc5FRCeRg==
X-Received: by 2002:a65:4507:: with SMTP id n7mr10385047pgq.86.1568332216055;
        Thu, 12 Sep 2019 16:50:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b46:: with SMTP id b67ls5336674pfb.8.gmail; Thu, 12 Sep
 2019 16:50:15 -0700 (PDT)
X-Received: by 2002:aa7:82d9:: with SMTP id f25mr42068700pfn.117.1568332215687;
        Thu, 12 Sep 2019 16:50:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568332215; cv=none;
        d=google.com; s=arc-20160816;
        b=SozDMVvtoUj48WWnzPFKrJW6kpInxQdNDfRMhhK4jdi94ZYaQPDjlw9hPW0LsedUo1
         lY1j6p6rtJRmcbvxF2QsNCN1vgx1tGye0MLNTvzZZrMCMw9/7WvWYPPFgvdiw0Ilm6TL
         hcbU2zp8Lo0oHCgwBuwomKdKepvlqmuazp/bafkBZGu9mBSJM/eR3AAlAyFN2s/GMhSi
         U6I7MH39asri84zYW6Y6e3WpNIAHJe0DmWPpmbo3ljhxGJdopoVELsnXnpas4bOtQ3zJ
         PLRwDjbOEWbbgnLgj5zjZhIMI0gSF9R1l84MxxLBM0QpKxPutBiOobQudhY8FiAwuBfn
         JdQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id;
        bh=Cym2F2T5ZaxBBw44B+eAzTXuUBWdGqz+4oBLF7XNHUs=;
        b=w5vMzbiBwk2+qPi3bkSKuSB0G+Gjj+vWzRn+pJuFFhgZb7mkfrO6IZvyhMCh/LU5b7
         Xd9OYs75jiiKwb37ZLVr3aHtDl1V+5AWLoJt/zF/FFZkrxKyeSw2fpNd270spXn/Qycz
         GAUz+bprDGtoMm/i85KA9Qkp1oIfXtSxnIAquNDrIrk5cU428gd92GFLo1JL0R2+6WEu
         SFyQMUgvoPqZw63U46Ruof2Ry10/1nlLEMdn4wPQf84RPvH9AxaAkyLQZmmIasBqRCZ7
         DRKmdD0+btx7qc76vxndEB/fLcKVi+qVgZ3j/9UdgI6faBxpwyYpyeCO8KHII0Rl4q0R
         gtMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.17 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0017.hostedemail.com. [216.40.44.17])
        by gmr-mx.google.com with ESMTPS id g12si1302365plm.2.2019.09.12.16.50.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Sep 2019 16:50:15 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.17 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.17;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 4E0EC18030445;
	Thu, 12 Sep 2019 23:50:14 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:355:379:599:871:973:988:989:1000:1260:1313:1314:1345:1359:1437:1516:1518:1535:1537:1566:1575:1594:1711:1714:1730:1747:1764:1777:1792:2393:2559:2562:3138:3139:3140:3141:3142:3622:3865:3867:3868:3872:3873:4119:4321:4362:5007:6120:6506:6747:6748:7281:7776:7980:8531:10004:10394:10400:10848:11232:11604:11658:11914:12297:12740:12895:13439:14659:21080:21433:21627:21789:21819:30022:30054:30079:30091,0,RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:21,LUA_SUMMARY:none
X-HE-Tag: snake37_1efd62991ce19
X-Filterd-Recvd-Size: 8670
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf18.hostedemail.com (Postfix) with ESMTPA;
	Thu, 12 Sep 2019 23:50:12 +0000 (UTC)
Message-ID: <a8290101e2720cac8b06613ec4cb91ffbfd69f05.camel@perches.com>
Subject: Re: [rfc patch script] treewide conversion of __section(foo) to
 section("foo");
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Stephen Rothwell
 <sfr@canb.auug.org.au>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
 clang-built-linux <clang-built-linux@googlegroups.com>, LKML
 <linux-kernel@vger.kernel.org>
Date: Thu, 12 Sep 2019 16:50:11 -0700
In-Reply-To: <CAKwvOdn6bMGZFAwH8iS5xD+Ce7oV8U6Fgi_SrFpCjo2-1hEUrw@mail.gmail.com>
References: <7ef58eb00bc46b4ea3fe49a8c45cd2ff06292247.camel@perches.com>
	 <CAKwvOdn6bMGZFAwH8iS5xD+Ce7oV8U6Fgi_SrFpCjo2-1hEUrw@mail.gmail.com>
Content-Type: multipart/mixed; boundary="=-l/Hb6MCBA8+oZyjPPDsJ"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.17 is neither permitted nor denied by best guess
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


--=-l/Hb6MCBA8+oZyjPPDsJ
Content-Type: text/plain; charset="UTF-8"

On Thu, 2019-09-12 at 15:45 -0700, Nick Desaulniers wrote:
> If you want to email me just the patch file (so I don't have to
> copy+pasta from an email),

Lazy... ;)

> I'd be happy to apply it and compile+boot test a few more arch's
> than x86.

Thanks.  attached.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a8290101e2720cac8b06613ec4cb91ffbfd69f05.camel%40perches.com.

--=-l/Hb6MCBA8+oZyjPPDsJ
Content-Type: application/x-perl; name="section.pl"
Content-Disposition: attachment; filename="section.pl"
Content-Transfer-Encoding: base64

IyBjb252ZXJ0IGxpbnV4LWtlcm5lbCBfX3NlY3Rpb24gdXNlcyBmcm9tIHVucXVvdGVkIHN0cmlu
ZyB0byBxdW90ZWQgc3RyaW5nCiMgY29udmVydCBfX2F0dHJpYnV0ZV9fKChzZWN0aW9uKCJmb28i
KSkpIHRvIF9fc2VjdGlvbigiZm9vIikKIyBjb252ZXJ0IF9fYXR0cmlidXRlX18oKGZvbywgc2Vj
dGlvbj0oImJhciIpLCBiYXopKQojICAgICAgdG8gX19zZWN0aW9uKCJiYXIiKSBhdHRyaWJ1dGUo
KGZvbywgYmF6KSkKCnVzZSBzdHJpY3Q7CgojIHBhdGNoIGNvbXBpbGVyX2F0dHJpYnV0ZXMuaCB0
byByZW1vdmUgcXVvdGluZyBvZiBzZWN0aW9uIG5hbWUKCm15ICRyZXN1bHQgPSBxeHtwYXRjaCAt
cDEgPDwiRU9GIgogaW5jbHVkZS9saW51eC9jb21waWxlcl9hdHRyaWJ1dGVzLmggfCAxMiArLS0t
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMTEgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9jb21waWxlcl9hdHRyaWJ1dGVzLmggYi9pbmNs
dWRlL2xpbnV4L2NvbXBpbGVyX2F0dHJpYnV0ZXMuaAppbmRleCA5Y2EwNDBmYTFjYzYuLjg4ZDNl
ZWExY2JiYSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9jb21waWxlcl9hdHRyaWJ1dGVzLmgK
KysrIGIvaW5jbHVkZS9saW51eC9jb21waWxlcl9hdHRyaWJ1dGVzLmgKQEAgLTIyNSwyMSArMjI1
LDExIEBACiAjZGVmaW5lIF9fcHVyZSAgICAgICAgICAgICAgICAgICAgICAgICAgX19hdHRyaWJ1
dGVfXygoX19wdXJlX18pKQogCiAvKgotICogTm90ZTogU2luY2UgdGhpcyBtYWNybyBtYWtlcyB1
c2Ugb2YgdGhlICJzdHJpbmdpZmljYXRpb24gb3BlcmF0b3IiIGAjYCwKLSAqIGEgcXVvdGVkIHN0
cmluZyBsaXRlcmFsIHNob3VsZCBub3QgYmUgcGFzc2VkIHRvIGl0LiBlZy4gcHJlZmVyOgotICog
ICAgIF9fc2VjdGlvbiguZm9vKQotICogdG86Ci0gKiAgICAgX19zZWN0aW9uKCIuZm9vIikKLSAq
IHVubGVzcyB0aGUgc2VjdGlvbiBuYW1lIGlzIGR5bmFtaWNhbGx5IGJ1aWx0IHVwLCBpbiB3aGlj
aCBjYXNlIHRoZQotICogdmVyYm9zZSBfX2F0dHJpYnV0ZV9fKChfX3NlY3Rpb25fXygiLmZvbyIg
eCkpKSBzaG91bGQgYmUgcHJlZmVycmVkLgotICoKLSAqIFNlZSBhbHNvOiBodHRwczovL2J1Z3Mu
bGx2bS5vcmcvc2hvd19idWcuY2dpP2lkPTQyOTUwCi0gKgogICogICBnY2M6IGh0dHBzOi8vZ2Nj
LmdudS5vcmcvb25saW5lZG9jcy9nY2MvQ29tbW9uLUZ1bmN0aW9uLUF0dHJpYnV0ZXMuaHRtbCNp
bmRleC1zZWN0aW9uLWZ1bmN0aW9uLWF0dHJpYnV0ZQogICogICBnY2M6IGh0dHBzOi8vZ2NjLmdu
dS5vcmcvb25saW5lZG9jcy9nY2MvQ29tbW9uLVZhcmlhYmxlLUF0dHJpYnV0ZXMuaHRtbCNpbmRl
eC1zZWN0aW9uLXZhcmlhYmxlLWF0dHJpYnV0ZQogICogY2xhbmc6IGh0dHBzOi8vY2xhbmcubGx2
bS5vcmcvZG9jcy9BdHRyaWJ1dGVSZWZlcmVuY2UuaHRtbCNzZWN0aW9uLWRlY2xzcGVjLWFsbG9j
YXRlCiAgKi8KLSNkZWZpbmUgX19zZWN0aW9uKFMpICAgICAgICAgICAgICAgICAgICBfX2F0dHJp
YnV0ZV9fKChfX3NlY3Rpb25fXygjUykpKQorI2RlZmluZSBfX3NlY3Rpb24oc2VjdGlvbikgICAg
ICAgICAgICAgIF9fYXR0cmlidXRlX18oKF9fc2VjdGlvbl9fKHNlY3Rpb24pKSkKIAogLyoKICAq
ICAgZ2NjOiBodHRwczovL2djYy5nbnUub3JnL29ubGluZWRvY3MvZ2NjL0NvbW1vbi1GdW5jdGlv
bi1BdHRyaWJ1dGVzLmh0bWwjaW5kZXgtdW51c2VkLWZ1bmN0aW9uLWF0dHJpYnV0ZQpFT0Z9OwoK
IyBHZXQgdGhlIGxpc3Qgb2YgZmlsZXMgdG8gbW9kaWZ5IChjb250YWlucyBfX3NlY3Rpb24gb3Ig
X19hdHRyaWJ1dGVfXy4qc2VjdGlvbgojIChpZ25vcmUgc2NyaXB0cywgdG9vbHMsIHVhcGksIGFu
ZCBjb21waWxlcl9hdHRyaWJ1dGVzLmgpCgpteSAkb3V0cHV0ID0gYGdpdCBncmVwIC0tbmFtZS1v
bmx5IC1QICIoPzpcXGJfX3NlY3Rpb25cXGJcfFxcYl9fYXR0cmlidXRlX19cXGIuKnNlY3Rpb24p
IiB8IGdyZXAgLXZQICdeKD86aW5jbHVkZS9saW51eC9jb21waWxlcl9hdHRyaWJ1dGVzXFwuaHxz
Y3JpcHRzL3x0b29scy98L3VhcGkvKSdgOwpteSBAZmlsZXMgPSBzcGxpdCgiXG4iLCAkb3V0cHV0
KTsKCiMgTW9kaWZ5IGVhY2ggcG9zc2libGUgZmlsZQpmb3JlYWNoIChAZmlsZXMpIHsKICAgIGNo
b21wOwogICAgbXkgJGZpbGUgPSAkXzsKCiAgICAjIHJlYWQgdGhlIG9yaWdpbmFsIGZpbGUKICAg
IG9wZW4oRkgsICc8JywgJGZpbGUpIG9yIGRpZSAkITsKICAgIG15IEBsaW5lcyA9IDxGSD47CiAg
ICBjbG9zZSBGSDsKCiAgICAjIHdyaXRlIHRoZSBtb2RpZmllZCBmaWxlIGxpbmUgYnkgbGluZQog
ICAgb3BlbiAoRkgsICc+JywgJGZpbGUpIG9yIGRpZSAkITsKICAgIGZvcmVhY2ggbXkgJGxpbmUg
KEBsaW5lcykgewoJY2hvbXAgJGxpbmU7CglteSAkbmV3bGluZSA9ICRsaW5lOwoKCSMgQ29udmVy
dCBfX3NlY3Rpb24oZm9vKSB0byBfX3NlY3Rpb24oImZvbyIpCgkjIGlmICJmb28iIHVzZXMgdG9r
ZW4gcGFzdGluZywgcHJlIGFuZCBwb3N0IHRva2VucyBhcmUgYWxzbyBxdW90ZWQKCWlmICgkbGlu
ZSA9fiBtL1xiX19zZWN0aW9uXHMqXChccyooPyEiKShbXlwpXSspXCkvKSB7CgkgICAgbXkgJG9s
ZHNlY3Rpb24gPSAkMTsKCSAgICBteSAkbmV3c2VjdGlvbiA9ICQxOwoJICAgIGlmICgkb2xkc2Vj
dGlvbiA9fiAvKC4qKSMjKC4qKSMjKC4qKS8pIHsKCQkkbmV3c2VjdGlvbiA9ICciJyAuIHRyaW0o
JDEpIC4gJyIgIyMgJyAuIHRyaW0oJDIpIC4gJyAjIyAiJyAuIHRyaW0oJDMpIC4gJyInOwoJICAg
IH0gZWxzZSB7CgkJJG5ld3NlY3Rpb24gPSAnIicgLiB0cmltKCRvbGRzZWN0aW9uKSAuICciJzsK
CSAgICB9CgkgICAgJG5ld2xpbmUgPX4gcy9fX3NlY3Rpb25ccypcKFxzKlxRJG9sZHNlY3Rpb25c
RVxzKlwpL19fc2VjdGlvbigkbmV3c2VjdGlvbikvOwoJfQoKCSMgY29udmVydCBfX2F0dHJpYnV0
ZV9fKChzZWN0aW9uKCJmb28iKSkpIHRvIF9fc2VjdGlvbigiZm9vIikKCSRuZXdsaW5lID1+IHMv
XGJfX2F0dHJpYnV0ZV9fXHMqXChccypcKFxzKl8qc2VjdGlvbl8qXHMqXChccyooIlteIl0rIilc
cypcKVxzKlwpXHMqXCkvX19zZWN0aW9uKCQxKS87CgoJIyBjb252ZXJ0IF9fYXR0cmlidXRlX18o
KGZvbywgc2VjdGlvbj0oImJhciIpLCBiYXopKQoJIyB0byBfX3NlY3Rpb24oImJhciIpIGF0dHJp
YnV0ZSgoZm9vLCBiYXopKQoJaWYgKCRuZXdsaW5lID1+IC8oXGJfX2F0dHJpYnV0ZV9fXHMqXChc
cypcKChbXixfXSspPyhccyosP1xzKl8qc2VjdGlvbl8qXHMqXChccyooIlteIl0rIilccypcKVxz
Kiw/XHMqKSguKilccypcKVxzKlwpKS8pIHsKCSAgICBteSAkc2VjdGlvbiA9ICQzOwoJICAgIG15
ICRjb21tYSA9ICIiOwoJICAgICRjb21tYSA9ICIsICIgaWYgKCRzZWN0aW9uID1+IC9eXHMqLC8g
JiYgJHNlY3Rpb24gPX4gLyxccyokLyk7CgkgICAgJG5ld2xpbmUgPX4gcy9cUSRzZWN0aW9uXEUv
JGNvbW1hLzsKCSAgICAkc2VjdGlvbiA9fiBzL15bXiJdKi8vOwoJICAgICRzZWN0aW9uID1+IHMv
XigiW14iXSoiKS4qLyQxLzsKCSAgICAkbmV3bGluZSA9fiBzL1xiX19hdHRyaWJ1dGVfXy9fX3Nl
Y3Rpb24oJHNlY3Rpb24pIF9fYXR0cmlidXRlX18vOwoJfQoKCSMgaWYgdGhlIGxpbmUgZW5kZWQg
d2l0aCBhIGxpbmUgY29udGludWF0aW9uIFwsIHRyeSB0byBtb3ZlIHRoZQoJIyBjb250aW51YXRp
b24gdG8gdGhlIHNhbWUgbG9jYXRpb24gYnkgcmVtb3Zpbmcgb3IgYWRkaW5nIHRhYnMKCWlmICgk
bGluZSA9fiAvXFwkLykgewoJICAgIG15ICRvbGVuID0gbGVuZ3RoKGV4cGFuZF90YWJzKCRsaW5l
KSk7CgkgICAgbXkgJG5sZW4gPSBsZW5ndGgoZXhwYW5kX3RhYnMoJG5ld2xpbmUpKTsKCSAgICBp
ZiAoJG5ld2xpbmUgPX4gL1x0XFwkLykgewoJCWlmICgkbmxlbiA+ICRvbGVuKSB7CgkJICAgICRu
ZXdsaW5lID1+IHMvXHRcXCQvXFwvOwoJCX0gZWxzZSB7CgkJICAgIHdoaWxlICgkbmxlbiA8ICRv
bGVuKSB7CgkJCSRuZXdsaW5lID1+IHMvXFwkL1x0XFwvOwoJCQkkbmxlbiA9IGxlbmd0aChleHBh
bmRfdGFicygkbmV3bGluZSkpOwoJCSAgICB9CgkJfQoJICAgIH0KCX0KCXByaW50IEZIICIkbmV3
bGluZVxuIjsKICAgIH0KICAgIGNsb3NlIEZIOwp9CgojIEFuZCBnaXQgY29tbWl0IHRoZSBjaGFu
Z2VzCiRyZXN1bHQgPSBxeHtnaXQgY29tbWl0IC1hIC0tYXV0aG9yPSdKb2UgUGVyY2hlcyA8am9l
XEBwZXJjaGVzLmNvbT4nIC1GLSA8PCJFT0YiCnRyZWV3aWRlOiBDb252ZXJ0IG1hY3JvIGFuZCB1
c2VzIG9mIF9fc2VjdGlvbihmb28pIHRvIF9fc2VjdGlvbigiZm9vIikKClVzZSBhIG1vcmUgZ2Vu
ZXJpYyBmb3JtIGZvciBfX3NlY3Rpb24gdGhhdCByZXF1aXJlcyBxdW90ZXMgdG8gYXZvaWQKY29t
cGxpY2F0aW9ucyB3aXRoIGNsYW5nIGFuZCBnY2MgZGlmZmVyZW5jZXMuCgpSZW1vdmUgdGhlIHF1
b3RlIG9wZXJhdG9yICMgZnJvbSBjb21waWxlcl9hdHRyaWJ1dGVzLmggX19zZWN0aW9uIG1hY3Jv
LgoKQ29udmVydCBhbGwgdW5xdW90ZWQgX19zZWN0aW9uKGZvbykgdXNlcyB0byBxdW90ZWQgX19z
ZWN0aW9uKCJmb28iKS4KQWxzbyBjb252ZXJ0IF9fYXR0cmlidXRlX18oKHNlY3Rpb24oImZvbyIp
KSkgdXNlcyB0byBfX3NlY3Rpb24oImZvbyIpCmV2ZW4gaWYgdGhlIF9fYXR0cmlidXRlX18gaGFz
IG11bHRpcGxlIGxpc3QgZW50cnkgZm9ybXMuCgpTaWduZWQtb2ZmLWJ5OiBKb2UgUGVyY2hlcyA8
am9lXEBwZXJjaGVzLmNvbT4KRU9GCn07CgojIHV0aWxpdHkgc3Vicm91dGluZXMKc3ViIHRyaW0g
ewogICAgbXkgKCRzdHJpbmcpID0gQF87CiAgICAkc3RyaW5nID1+IHMvXlxzK3xccyskLy9nOwog
ICAgcmV0dXJuICRzdHJpbmc7Cn0KCnN1YiBleHBhbmRfdGFicyB7CglteSAoJHN0cikgPSBAXzsK
CglteSAkcmVzID0gJyc7CglteSAkbiA9IDA7Cglmb3IgbXkgJGMgKHNwbGl0KC8vLCAkc3RyKSkg
ewoJCWlmICgkYyBlcSAiXHQiKSB7CgkJCSRyZXMgLj0gJyAnOwoJCQkkbisrOwoJCQlmb3IgKDsg
KCRuICUgOCkgIT0gMDsgJG4rKykgewoJCQkJJHJlcyAuPSAnICc7CgkJCX0KCQkJbmV4dDsKCQl9
CgkJJHJlcyAuPSAkYzsKCQkkbisrOwoJfQoKCXJldHVybiAkcmVzOwp9Cg==


--=-l/Hb6MCBA8+oZyjPPDsJ--

