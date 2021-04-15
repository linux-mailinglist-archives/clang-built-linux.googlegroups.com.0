Return-Path: <clang-built-linux+bncBAABBXNC36BQMGQE4XHN3LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E3B3601A3
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 07:38:38 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id w9sf1661491ybw.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 22:38:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618465117; cv=pass;
        d=google.com; s=arc-20160816;
        b=oo6MGyXtKW0gEY5fZALn9SDUb/SPGK2+OXWMrUTAEzQIzjBJ3ufHeucm7T3iiGK1bq
         5g5xcasfdcHhXHB9ZBMDcLfPK5CZrY/5sXy94kiff62RBDd0wHz1lE82lfyd+ozdrOGV
         pZttwMLM5aDrHT2mxw0d1ZYDhGtRIObBGSPJoH9/AXsSHPZbhXb8VT2M/a0adsqnkLt7
         M8VF9n1kuF7QqVDa69PzpvKdnXIVDWaNUiyhqVRrStGCSkG6uErZ3rF9wffQ9noBiwun
         TSaZGCzEYKW1ogKc4gVdpYQY53c3RyeRKXv20zLnasesf7/jzrHNKarwIIFeF6EPkOek
         ye9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Q3iDMh0884AolJqk0n3Rr7Bkujd5BjSIfDC4Ydnffes=;
        b=IfA5nACTDDjEE+C+9HV3XZyIJMZpUFgQrnOLq10AzDySR9Wd+9eihkn79dcX5on3jt
         K0MDLTLOO5BUKvSrmi67gTgSK6dYzK151E4OPcTH9ryyoPYe2BnNz1ZuHws9O/z04/mf
         XqZlwUpqb7BFoqRyQxT2xO1AMuXzBN/fJJd9fAeAh1CxP2+D+OPH+sVsa2H6p+w6Q34l
         cqOwrYdC9QW6IyOlR9vgS3YD7Ok4hej2TUQkPbZxU4+bJDEVsTOeG6UIKC/FNfyl+587
         VngF05ilRzK5mZE4Ly5HbGbI4DrmucvfSguBdfWr1vlaOUSYCZT99qT54q4i80O2fGZV
         XBDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@email.cn header.s=dkim header.b=fF7pniN7;
       spf=pass (google.com: domain of bobwxc@email.cn designates 43.250.32.171 as permitted sender) smtp.mailfrom=bobwxc@email.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q3iDMh0884AolJqk0n3Rr7Bkujd5BjSIfDC4Ydnffes=;
        b=IAeJYxCu1vMUP0dKNagUCQDGUMU2YrK89jxXpavas2x3ZN664gOwmh6WNTokkrufKN
         eF3yc8kr4UuFOf5tHfxYmiqM8MrRS8kebVFjoWhYOys1cwEIPp6z75OWSXKUplIEFm00
         1vhV7j3VQ7+riVQFlMe+LHBjATr9KgDnRzsp/PQ6kQSB7uV/LU5w7TTIjzdNUbl1uH6H
         XkgBExZLPw5BiSNsrt329lFpsEgXXEGMmo2krDW8hw/qCiqqkPkmjlnHd6JJJAz9A85x
         2q6/qesonCRgObjLVUzLYmpk9ExXcligfcZfzq7IvGMwF1j9Zdn5td+0Gvz+/zbkh8BT
         DHXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q3iDMh0884AolJqk0n3Rr7Bkujd5BjSIfDC4Ydnffes=;
        b=Hpuz/efOEXWrETiPx4JkHwCGBZrOh/yGrjvlpaeDp0BlfctkZVBD2ufVkd2Y3AK78i
         OFhsS353DsGzM06Y4+nr3Iaj8w9+S7UZZ6QDwXgUr8tLT1zFo1RzIQ6F/bLtV/DFLZ31
         1iMvd3ZYG9YgZJhQjlCXLSbUjQ0VS85OIVc4QGY7WYXECMkXzX5n2l9jiyCfjK7dxkrb
         nMYKK+niV7S00lRT2V3zu2/f9HD/Ukyy7/7U/eLtQv0GHN72bOReLWAtgpQptRDCpBbJ
         rWf8YhTYoG/3Qp8sAJ1Gx/KcIUhrVIZyHEKx4Zptf+2zMwmrOoQeu+Nee+qDwOcKy8BF
         JkGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IS4/xUxHgtT3QW2zd67m8LwYhO0rmqhxbLFmdKjPuJ0B0+fy6
	YhWCtOCpzCciymYdQjOHmbg=
X-Google-Smtp-Source: ABdhPJyp3MFsCtGr5adht5wGMYK+M5UeI9zoFuTH+3UzgNlazDFMjHOaqpS+C+7Rmvv77NTtBZCeEg==
X-Received: by 2002:a25:c553:: with SMTP id v80mr2188463ybe.221.1618465117491;
        Wed, 14 Apr 2021 22:38:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a045:: with SMTP id x63ls2067812ybh.1.gmail; Wed, 14 Apr
 2021 22:38:36 -0700 (PDT)
X-Received: by 2002:a25:3188:: with SMTP id x130mr2225070ybx.174.1618465116724;
        Wed, 14 Apr 2021 22:38:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618465116; cv=none;
        d=google.com; s=arc-20160816;
        b=z8tEfXC834gz0gfJd+YrSHleSseKfkMoHoZXj3xdN0NeRIdaEeG3DFRr6mG0CNDEUV
         XhOG1wTrB9oG2eel/VMR6WvqUr7ywnXW3PJu59zn3GMJo0VI1U3G3F7ZgzDBJPmT4+/6
         X6zjL0LefIfUFBQP735Sd9wSFfdYZqC8rQOore/WldS/sa0xMk5LRgJdSmGsK+CVlUhU
         2WYbhpV6+TOEtW3kCncSE+E5XFv22QslUWZjRlk2l9mSEv62UURiZod+GCqXeLe+dTJQ
         XOaOX7paOMO2c8suhfD4lR4ej18VflhE1JaD1XOpH9cdx/DNM8yG8z7G1TawCTU5/amL
         /HVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=e+5AxPE7Oi4vd2SZdO2Iljr7Knf4PsxLD9AgTERDiCw=;
        b=faUsvX7TgKSOS6IyUTAJKIxhZ/5U+h8PK5UsPqb/k7qpqnXdI2MDciFBjChPqv/ive
         27dg9IaIp+fJwR3DhUNgx7EwLzFQMZBD6bQt02bBKjGdZqhGoTpZOITBZ0tX+o+H/jGs
         XwuPpDH7N//5CImJ+yXrK7w3BfFtTZuM6BPOcQpl4AziEKbbIucfiOQciVk8JQeT5s/n
         XsG0VONGSGPtlrstK4Th++bByG3DLyUdY91iUxI5B5qMmoMSn9lmQykiRbGI+5ycM3gr
         EhX3DlIxXdVtoI3TC2wjqSQYEDNvt0feffYIyRWRdhCaAQNlcM/sy2tAtuXBpW54spms
         ll6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@email.cn header.s=dkim header.b=fF7pniN7;
       spf=pass (google.com: domain of bobwxc@email.cn designates 43.250.32.171 as permitted sender) smtp.mailfrom=bobwxc@email.cn
Received: from email.cn ([43.250.32.171])
        by gmr-mx.google.com with ESMTPS id l14si127396ybp.4.2021.04.14.22.38.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 14 Apr 2021 22:38:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of bobwxc@email.cn designates 43.250.32.171 as permitted sender) client-ip=43.250.32.171;
Received: from bobwxc.top (unknown [120.238.248.129])
	by v_coremail2-frontend-1 (Coremail) with SMTP id LCKnCgB36tBM0XdgHZddAA--.16109S2;
	Thu, 15 Apr 2021 13:38:23 +0800 (CST)
Date: Thu, 15 Apr 2021 13:38:20 +0800
From: "Wu X.C." <bobwxc@email.cn>
To: Fangrui Song <maskray@google.com>
Cc: Alex Shi <seakeel@gmail.com>, Alex Shi <alexs@kernel.org>,
	Bernard Zhao <bernard@vivo.com>, Jonathan Corbet <corbet@lwn.net>,
	YanTeng Si <sterlingteng@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5] docs/zh_CN: add translations in zh_CN/dev-tools/gcov
Message-ID: <20210415053820.GA26262@bobwxc.top>
References: <20210414082316.15160-1-bernard@vivo.com>
 <20210414132127.GA13306@bobwxc.top>
 <69e5d111-a439-7000-ad5e-4e0f4dabe29f@gmail.com>
 <20210415050755.onbtp7ftzawftrud@google.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline
In-Reply-To: <20210415050755.onbtp7ftzawftrud@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CM-TRANSID: LCKnCgB36tBM0XdgHZddAA--.16109S2
X-Coremail-Antispam: 1UD129KBjvJXoWxuF1xKw15uryxJr4DXFyxZrb_yoW5tFy3pF
	srGayxKF48KrWUCryI9w10q39Fyay5K3W2qFy8Jryjqrs09F4Skr12gr18Wasxu34DAryq
	y3W7AFnakw15AFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUyKb7Iv0xC_Cr1lb4IE77IF4wAFc2x0x2IEx4CE42xK8VAvwI8I
	cIk0rVWrJVCq3wA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjx
	v20xvE14v26r1I6r4UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j6F4UM28EF7xvwVC2
	z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJwAS0I0E0x
	vYzxvE52x082IY62kv0487M2AExVA0xI801c8C04v7Mc02F40EFcxC0VAKzVAqx4xG6I80
	ewAv7VCjz48v1sIEY20_Cr1UJr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcVAKI48JM4
	IIrI8v6xkF7I0E8cxan2IY04v7MxAIw28IcxkI7VAKI48JMxAIw28IcVCjz48v1sIEY20_
	Cr1UJr1l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x
	8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE
	2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42
	xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF
	7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvj4RRbyZUUUUU
X-Originating-IP: [120.238.248.129]
X-CM-SenderInfo: pere453f6hztlloou0/
X-Original-Sender: bobwxc@email.cn
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@email.cn header.s=dkim header.b=fF7pniN7;       spf=pass
 (google.com: domain of bobwxc@email.cn designates 43.250.32.171 as permitted
 sender) smtp.mailfrom=bobwxc@email.cn
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


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMTQsIDIwMjEgYXQgMTA6MDc6NTVQTSAtMDcwMCwgRmFuZ3J1aSBTb25nIHdy
b3RlOg0KPiBSZXZpZXdlZC1ieTogRmFuZ3J1aSBTb25nIDxtYXNrcmF5QGdvb2dsZS5jb20+DQo+
IA0KPiBJbmxpbmVkIHNvbWUgc3VnZ2VzdGlvbnMuDQoNClRoYW5rcyBmb3IgeW91ciByZXZpZXch
DQoNCj4gDQo+IE9uIDIwMjEtMDQtMTQsIEFsZXggU2hpIHdyb3RlOg0KPiA+IFJldmlld2VkLWJ5
OiBBbGV4IFNoaSA8YWxleHNAa2VybmVsLm9yZz4NCj4gPiANCj4gPiBPbiAyMDIxLzQvMTQg5LiL
5Y2IOToyMSwgV3UgWGlhbmdDaGVuZyB3cm90ZToNCj4gPiA+IEZyb206IEJlcm5hcmQgWmhhbyA8
YmVybmFyZEB2aXZvLmNvbT4NCj4gPiA+IA0KPiA+ID4gQWRkIG5ldyB6aCB0cmFuc2xhdGlvbnMN
Cj4gPiA+ICogemhfQ04vZGV2LXRvb2xzL2djb3YucnN0DQo+ID4gPiAqIHpoX0NOL2Rldi10b29s
cy9pbmRleC5yc3QNCj4gPiA+IGFuZCBsaW5rIHRoZW0gdG8gemhfQ04vaW5kZXgucnN0DQo+ID4g
PiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEJlcm5hcmQgWmhhbyA8YmVybmFyZEB2aXZvLmNvbT4N
Cj4gPiA+IFJldmlld2VkLWJ5OiBXdSBYaWFuZ0NoZW5nIDxib2J3eGNAZW1haWwuY24+DQo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBXdSBYaWFuZ0NoZW5nIDxib2J3eGNAZW1haWwuY24+DQo+ID4gPiAt
LS0NCj4gPiA+ICsNClsuLi5dDQo+ID4gPiAr5ZyoTGludXjlhoXmoLjph4zkvb/nlKhnY2925YGa
5Luj56CB6KaG55uW546H5qOA5p+lDQo+ID4gPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQ0KPiA+ID4gKw0KPiA+ID4gK2djb3bmmK9saW51eOS4reW3sue7j+mbhuaIkOea
hOS4gOS4quWIhuaekOaooeWdl++8jOivpeaooeWdl+WcqOWGheaguOS4reWvuUdDQ+eahOS7o+eg
geimhueblueOh+e7nw0KPiANCj4gaW5zdHJ1bWVudGF0aW9uIOS4gOiIrOivkeS9nCDmj5Lmoanv
vIzogIzpnZ4g5YiG5p6Q44CCDQoNCkhhdmUgcmV3cml0ZWQgdGhpcyBwYXJhZ3JhcGguDQpIZXJl
IGlzICJnY292IHByb2ZpbGluZyBrZXJuZWwi77yMZ2NvduWIhuaekOaguOW/gw0KDQo+IA0KPiA+
ID4gK+iuoeaPkOS+m+S6huaUr+aMgeOAgg0KPiA+ID4gK2xpbnV45YaF5qC46L+Q6KGM5pe255qE
5Luj56CB6KaG55uW546H5pWw5o2u5Lya5LulZ2NvduWFvOWuueeahOagvOW8j+WtmOWCqOWcqGRl
YnVnLWZz5Lit77yM5Y+vDQo+IA0KPiDkuJPmnInlkI3or40gTGludXgg5bqU5aSn5YaZ44CCDQoN
CkRvbmUuDQoNCj4gDQo+ID4gPiAr5Lul6YCa6L+HZ2NvdueahCBgYC1vYGAg6YCJ6aG577yI5aaC
5LiL56S65L6L77yJ6I635b6X5oyH5a6a5paH5Lu255qE5Luj56CB6L+Q6KGM6KaG55uW546H57uf
6K6h5pWw5o2uDQo+ID4gPiAr77yI6ZyA6KaB6Lez6L2s5Yiw5YaF5qC457yW6K+R6Lev5b6E5LiL
5bm25LiU6KaB5pyJcm9vdOadg+mZkO+8iTo6DQo+ID4gPiArDQo+ID4gPiArICAgICMgY2QgL3Rt
cC9saW51eC1vdXQNCj4gPiA+ICsgICAgIyBnY292IC1vIC9zeXMva2VybmVsL2RlYnVnL2djb3Yv
dG1wL2xpbnV4LW91dC9rZXJuZWwgc3BpbmxvY2suYw0KPiA+ID4gKw0KPiA+ID4gK+i/meWwhuWc
qOW9k+WJjeebruW9leS4reWIm+W7uuW4puacieaJp+ihjOiuoeaVsOazqOmHiueahOa6kOS7o+eg
geaWh+S7tuOAgg0KPiA+ID4gK+WcqOiOt+W+l+i/meS6m+e7n+iuoeaWh+S7tuWQju+8jOWPr+S7
peS9v+eUqOWbvuW9ouWMlueahCBnY292XyDliY3nq6/lt6XlhbfvvIjmr5TlpoIgbGNvdl8g77yJ
77yM5p2l5a6e546wDQo+ID4gPiAr6Ieq5Yqo5YyW5aSE55CGbGludXjlhoXmoLjnmoTopobnm5bn
jofov5DooYzmlbDmja7vvIzlkIzml7bnlJ/miJDmmJPkuo7pmIXor7vnmoRIVE1M5qC85byP5paH
5Lu244CCDQo+ID4gPiArDQo+ID4gPiAr5Y+v6IO955qE55So6YCUOg0KPiA+ID4gKw0KPiA+ID4g
Kyog6LCD6K+V77yI55So5p2l5Yik5pat5q+P5LiA6KGM55qE5Luj56CB5piv5ZCm5bey57uP6L+Q
6KGM6L+H77yJDQo+ID4gPiArKiDmtYvor5XmlLnov5vvvIjlpoLkvZXkv67mlLnmtYvor5Xku6Pn
oIHvvIzlsL3lj6/og73lnLDopobnm5bliLDmsqHmnInov5DooYzov4fnmoTku6PnoIHvvIkNCj4g
PiA+ICsqIOWGheaguOmFjee9ruS8mOWMlu+8iOWvueS6juafkOS4gOS4qumAiemhuemFjee9ru+8
jOWmguaenOWFs+iBlOeahOS7o+eggeS7juadpeayoeaciei/kOihjOi/h++8jOaYrw0KPiA+ID4g
KyAg5ZCm6L+Y6ZyA6KaB6L+Z5Liq6YWN572u77yJDQo+IA0KPiBtaW5pbWl6aW5nOiDkvJjljJYg
LT4g5pyA5bCP5YyWL+eugOWMlg0KDQpEb25lLg0KDQo+IA0KPiA+ID4gKy4uIF9nY292OiBodHRw
czovL2djYy5nbnUub3JnL29ubGluZWRvY3MvZ2NjL0djb3YuaHRtbA0KPiA+ID4gKy4uIF9sY292
OiBodHRwOi8vbHRwLnNvdXJjZWZvcmdlLm5ldC9jb3ZlcmFnZS9sY292LnBocA0KPiA+ID4gKw0K
PiA+ID4gKw0KPiA+ID4gK+WHhuWkhw0KPiA+ID4gKy0tLS0NCj4gPiA+ICsNCj4gPiA+ICvlhoXm
oLjmiZPlvIDlpoLkuIvphY3nva46Og0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICAgQ09ORklHX0RF
QlVHX0ZTPXkNCj4gPiA+ICsgICAgICAgIENPTkZJR19HQ09WX0tFUk5FTD15DQo+ID4gPiArDQo+
ID4gPiAr6I635Y+W5pW05Liq5YaF5qC455qE6KaG55uW546H5pWw5o2u77yM6L+Y6ZyA6KaB5omT
5byAOjoNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgIENPTkZJR19HQ09WX1BST0ZJTEVfQUxMPXkN
Cj4gPiA+ICsNCj4gPiA+ICvpnIDopoHms6jmhI/nmoTmmK/vvIzmlbTkuKrlhoXmoLjlvIDlkK/o
pobnm5bnjofnu5/orqHkvJrpgKDmiJDlhoXmoLjplZzlg4/mlofku7blsLrlr7jnmoTlop7lpKfv
vIwNCj4gPiA+ICvlkIzml7blhoXmoLjov5DooYznmoTkuZ/kvJrlj5jmhaLkuIDkupvjgIINCj4g
DQo+IHMv55qELy8NCg0KRG9uZS4NCg0KPiANCj4gPiA+ICvlj6blpJbvvIzlubbkuI3mmK/miYDm
nInnmoTmnrbmnoTpg73mlK/mjIHmlbTkuKrlhoXmoLjlvIDlkK/opobnm5bnjofnu5/orqHjgIIN
Cj4gPiA+ICsNCj4gPiA+ICvku6PnoIHov5DooYzopobnm5bnjofmlbDmja7lj6rlnKhkZWJ1Z2Zz
5oyC6L295a6M5oiQ5ZCO5omN5Y+v5Lul6K6/6ZeuOjoNCj4gPiA+ICsNClsuLi5dDQo+ID4gPiAr
DQo+ID4gPiAr57yW6K+R5py65ZKM5rWL6K+V5py65YiG56a7DQo+ID4gPiArLS0tLS0tLS0tLS0t
LS0tLS0tDQo+ID4gPiArDQo+ID4gPiArZ2NvdueahOWGheaguOWIhuaekOaetuaehOaUr+aMgeWG
heaguOeahOe8luivkeWSjOi/kOihjOaYr+WcqOWQjOS4gOWPsOacuuWZqOS4iu+8jOS5n+WPr+S7
pee8luivkeWSjOi/kA0KPiANCj4g5YiG5p6QIC0+IOaPkuahqQ0KDQpEb25lLg0KDQo+IA0KPiA+
ID4gK+ihjOaYr+WcqOS4jeWQjOeahOacuuWZqOS4iuOAgg0KWy4uLl0NCg0KVGhhbmtzIQ0KDQpX
dQ0KDQotLSAKWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2Ny
aWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAiQ2xhbmcgQnVpbHQgTGludXgiIGdyb3VwLgpUbyB1
bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9t
IGl0LCBzZW5kIGFuIGVtYWlsIHRvIGNsYW5nLWJ1aWx0LWxpbnV4K3Vuc3Vic2NyaWJlQGdvb2ds
ZWdyb3Vwcy5jb20uClRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIgdmlzaXQgaHR0
cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2NsYW5nLWJ1aWx0LWxpbnV4LzIwMjEwNDE1
MDUzODIwLkdBMjYyNjIlNDBib2J3eGMudG9wLgo=
--x+6KMIRAuhnl3hBn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEERbo3U5kJpaCtFl1PtlsoEiKCsIUFAmB30UgACgkQtlsoEiKC
sIUQuAv/WQclSGZzklGXZclzUOK0rZT4FLVV9ds2zT2mpWoOvvBihx5QUBBXSvPT
xaAkW3mJGNXqIYjr3jGxOWthdRrFD1HWFUaMoyW8mkg5qORscCZxU+lihMmlVp6B
GKWmW6q3QF9eujSntudA8fpjrUVb0/jJOie0w+nV2fEcH1xjrNn3+vfZ1PnFSHyl
7JE7bhy1Fsb4mBo1IIJ3G6eJvh7aHAKVLhDMW8vFW7IKiLmVtHkJ5v9osATwAMvo
bLyFA3+u0CHqV3jaMv4GoSwcvfQMDLXlSaj9z4hfA7+3B04BPrj4yCc8sCi0rElX
7OAs45RYMpArTXqxQhC2MnPmVqeHLIlOelveq6iyFx62otjdAMwckcQ+OoLJF8fF
f4Y6Pccly1Y/PcqvJs8cKRFyHJ3R6+AqHvdwxKBOEd7/Tjuny82yEwOvd/aP1/0r
kqpmZ/KCodPYYQtnnyDvrOTd5sXcpXReymmxXAoU7bbanUI3/UWIos/nutSJFXbt
jvTOqams
=FIbD
-----END PGP SIGNATURE-----

--x+6KMIRAuhnl3hBn--

