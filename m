Return-Path: <clang-built-linux+bncBAABB2P5TKJAMGQEA6TZIEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A25E4EEA0D
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Apr 2022 10:59:22 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id o17-20020a92c691000000b002c2c04aebe7sf1421011ilg.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Apr 2022 01:59:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1648803561; cv=pass;
        d=google.com; s=arc-20160816;
        b=RPX6wPV3kcTVrwme1REIAZ6sirdBN1GcbuAea+nq8qbB7Tx5LUgWCOD7QgP4kJpE6b
         FegZ5XtB1kZjXoP67Ne/HYiFK3037GZEl7PqrbQGZzgzJYrl0k2X/Bb9SVUZITOMdO4m
         x2ItSE/xnsqAscwI2sle3K69tQurUDzVUPfdU82R7NVMOpMf2co1f5FyMTIk5+voRW3Z
         v3/TA7XkhZJZqBgmNUj985mSmgUkgrb2df6B/oikd3LXHpBCtIJ0a1z6FJWhvg86t9IN
         V4jtU+Pj/bFqIvq0WJ8a/75NUpI7nzpCWw1NTk17hZt1z5/EX2Mw7nJ1JDJJgQ67nenx
         AaNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:mime-version:to
         :subject:from:sender:dkim-signature;
        bh=890uYm3NZHf9wBK53+vntkHLMxIzhgvwRGJWLsIDlEE=;
        b=ZftEbCUN4F3PGQa1gdBcSmY+OBifW7LxvCC8xR5b7BRD1LwbUZNcNrY7VXgp1j5TrE
         0gd5sD3Kd6MiidyDjqwsA+tT614aSoMfVOVUHmsJtI6UY2lV47SkRklXdCVTjtWtQoaT
         BU1tj35g5u7C6fMCn/OpMFOMciJzKYa3iE9Dntu3+CwTjrjaN2Qx6Ws28fPywvGS1Tew
         A2kZm08a0Kgxk+Z/78Y8JL2xnDd1dQLBEh3aczKDR5zv+XD+QaHmrT238yEgYiBzIf1D
         Hja95M4sB5gbQapuBo5j3OEr/0ykLbJ5mpuvV3eDem6xqUqPH2VDD2X3gHu0vH0pHN5A
         ISJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@casthebeltandroad.com.sg header.s=default header.b=d0lt7SvL;
       spf=pass (google.com: domain of yuting.shi@casthebeltandroad.com.sg designates 27.124.122.12 as permitted sender) smtp.mailfrom=yuting.shi@casthebeltandroad.com.sg
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:subject:to:mime-version:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=890uYm3NZHf9wBK53+vntkHLMxIzhgvwRGJWLsIDlEE=;
        b=RW2nW3bqI/FKe17o5VhAbxDg4V9fs2TZ4mLONFUpHNVxX6UATxCXMROjfxCst3yNQq
         kzDu+OvFadXRLJBtKcOx3yO9Pcgy9QkgQAjErWbLlX3YGedfswonBU4qZZscuPMapeN0
         ej/SMRvZBtLFIe6qsIabkb3zxlT3Gw2DkmvGdCKboFxk9827hUfpQHhO8ajyHtqGGgio
         433yX+QJNHelPYo+c2pBy6wbglzVXsYirh7izkSg8ngJ+dbrUkswAMvy+QbJfCc3YCKI
         yM+kO0aiZjxLmYIN7PnXYIaRrOESaG+YL7XbuSvLayDlGJSll7K7KhgKOEhVTVEyYjdX
         5itQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:subject:to:mime-version:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=890uYm3NZHf9wBK53+vntkHLMxIzhgvwRGJWLsIDlEE=;
        b=FAApL2SeP8wby7Fgc1njn6+NeSZfjaDPOXv2flUpf7DZFVHNWFgeAqj8Uq10NV9gj0
         ejJLpV8jkUad39vUWA57y+vqRst81L6lWfWtWoLMOWddkThlTDlIlD3R+6scR8J2Chrl
         qgtTTewxDcdS7FCoConcwa3NjI86zOMkeriH0QIBaPvkCAKAHAAdzIJJE6uq+TcetVdo
         IiUbQEidS/CPmMQZNdY+UfvqReexDgOJdI4Kb8aYy84KH3rkol0LcPaKc8FOMafDIGs2
         ZYxZMOQxJAVmEnfU4s4Xm5vk4snPOYD4xDOfSDe7cO7Ht1M4NdXNxZsqxB3Dvu3Bq2Xt
         WmDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530neSxIywVWNpj+/mnDxN7uFP0oZkKm7jSBh/ULPaOr1S7GtYST
	ZH+QaSErfELyhDWnjxefnek=
X-Google-Smtp-Source: ABdhPJy5gc/S1bYNz/aG1bl/KJ7roxEMlp2ndTYtXJabpcphhQF8d/oqzlCuIrZ8WR8su42ARLlc9g==
X-Received: by 2002:a05:6638:772:b0:319:e4eb:adb with SMTP id y18-20020a056638077200b00319e4eb0adbmr5170733jad.237.1648803561155;
        Fri, 01 Apr 2022 01:59:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a499:0:b0:323:63cf:a68b with SMTP id d25-20020a02a499000000b0032363cfa68bls315198jam.10.gmail;
 Fri, 01 Apr 2022 01:59:20 -0700 (PDT)
X-Received: by 2002:a05:6638:3727:b0:323:acce:dd0c with SMTP id k39-20020a056638372700b00323accedd0cmr3146395jav.267.1648803560700;
        Fri, 01 Apr 2022 01:59:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648803560; cv=none;
        d=google.com; s=arc-20160816;
        b=yKX2gucTbnznTe2IPGiNQxfUeeO8lHXtc/CXHfdQKwrKlHGFfAT9LyjiUSApCMY6SE
         KMmPO7ImtTwWBVp8Fog8/gvG1vwpDcUntoFPS9RulaysA24w7fwqwnA6d5m/OuaNWIF3
         PBwRlCPkgNDl8RvG2lWKzMH/WIcBgsjvmRPnC9ZUcI3Wt8fVcMkS+hPO2wRuDfxyXTmi
         sLZJjW8kMCbOyJBhIvavWKxw1Wc5POTi8hiX9A9SMyXeaxKH2/vbnYbNpO6Jf9XA67ai
         qv7SirGps23MCNEYYq89koCLHrs+wnF7eFoBfVgOBV7T26W3s32BKNQJvR4JE9GxCgW2
         zpwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:mime-version:to:subject:from:dkim-signature;
        bh=lk6Ii+DVEdSisokIemOWPdCE8W3OLKabg0bdZ9pl4sU=;
        b=Yow88gDKHaflVurXrQoajWXfufKbyxL7lRCIu0KR2TccVTQWpz+Sge8YdcX3XaBJ/R
         BAVhvnyU8hGC3naW0QYNb2CtS+cqBLdupLDUN7eJiUZ0sjBU9Gvdp2+O93BScI3wbonz
         J/QpifMykkx9PV6WudeerDreyAUgS2XZfOiP8DNa2ra+F7UD3PmlqZUBFJdtRPMRsFTI
         olSV0x8mdPSFqrNxKGvUA1FNJ/8rv0h4MymuMg0vwO7u8WiStpNbr2tXqTXL2G+GGGPt
         Il+4QFjGUJy4hIRxm6IavN5bItOZFoC2X7EFRw0FYMAJ9SPm96HFpMxlaQBMzbf+Miq1
         80sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@casthebeltandroad.com.sg header.s=default header.b=d0lt7SvL;
       spf=pass (google.com: domain of yuting.shi@casthebeltandroad.com.sg designates 27.124.122.12 as permitted sender) smtp.mailfrom=yuting.shi@casthebeltandroad.com.sg
Received: from mail-c-r15.ipv4.per01.ds.network (mail-c-r15.ipv4.per01.ds.network. [27.124.122.12])
        by gmr-mx.google.com with ESMTPS id x3-20020a023403000000b0031a548f05b8si94832jae.3.2022.04.01.01.59.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 01:59:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of yuting.shi@casthebeltandroad.com.sg designates 27.124.122.12 as permitted sender) client-ip=27.124.122.12;
Received: from cp-whmrsl01.sin02.ds.network (cp-whmrsl01.sin02.ds.network [43.243.118.9])
	by halon-out02.au.ds.network (Halon) with ESMTPS
	id cc74c6e0-b19a-11ec-9ec3-f8bc1204ff90;
	Fri, 01 Apr 2022 17:04:55 +0800 (AWST)
Received: from [114.104.141.80] (port=58180 helo=pc248)
	by cp-whmrsl01.sin02.ds.network with esmtpa (Exim 4.94.2)
	(envelope-from <yuting.shi@casthebeltandroad.com.sg>)
	id 1naD7h-0007CS-Hi
	for clang-built-linux@googlegroups.com; Fri, 01 Apr 2022 16:59:14 +0800
X-GUID: 1294DD77-5998-4352-8B72-F77A9C894E22
X-Has-Attach: no
From: =?UTF-8?B?Iue0p+aApemAmuefpe+8mumCrueuse+8iOezu+e7n+S8mOWMlu+8iSI=?=
 <yuting.shi@casthebeltandroad.com.sg>
Subject: =?UTF-8?B?Y2xhbmctYnVpbHQtbGludXhAZ29vZ2xlZ3JvdXBzLmNvbeWFs+S6ju+8muWF?=
 =?UTF-8?B?rOWPuOWQr+eUqOaWsOmCruS7tuezu+e7n+mAmuefpe+8gQ==?=
To: "clang-built-linux" <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; charset=UTF-8; boundary="----=_515_NextPart533608415936_=----"
MIME-Version: 1.0
Date: Fri, 1 Apr 2022 16:59:13 +0800
Message-Id: <202204011659124633029@casthebeltandroad.com.sg>
X-Mailer: Foxmail 7, 2, 5, 140[cn]
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp-whmrsl01.sin02.ds.network
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - casthebeltandroad.com.sg
X-Get-Message-Sender-Via: cp-whmrsl01.sin02.ds.network: authenticated_id: yuting.shi@casthebeltandroad.com.sg
X-Authenticated-Sender: cp-whmrsl01.sin02.ds.network: yuting.shi@casthebeltandroad.com.sg
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Original-Sender: yuting.shi@casthebeltandroad.com.sg
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@casthebeltandroad.com.sg header.s=default header.b=d0lt7SvL;
       spf=pass (google.com: domain of yuting.shi@casthebeltandroad.com.sg
 designates 27.124.122.12 as permitted sender) smtp.mailfrom=yuting.shi@casthebeltandroad.com.sg
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

This is a multi-part message in MIME format

------=_515_NextPart533608415936_=----
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

PHA+DQoJ6YCa55+l77yaY2xhbmctYnVpbHQtbGludXhAZ29vZ2xlZ3JvdXBzLmNvbeeUseS6juWk
muS9jeWRmOW3peWPjeW6lOmCrueuseWNoemhv++8jOaIkeWPuOWwhuS6jjIwMjLlubQ05pyI6LW3
5byA5aeL5Y2H57qn6YKu566x57O757uf77yM546w5Zyo5o+Q5YmN6YeH6ZuG5L+h5oGv5pa55L6/
5Y2H57qn5L2/55So77yB6L+H5pyf5pyq5pu05o2i57uf6K6h55qE5LiA5bm25YGa5Li65bqf5byD
6YKu566x5oiR5Y+45bCG5LqI5Lul5Zue5pS25bm25Yig6Zmk44CC5aSH5rOo77ya5Y2H57qn5pyf
6Ze05bm25LiN5b2x5ZON6YKu566x5q2j5bi45L2/55So77yM5Lya5YaN5pS25Yiw6YKu5Lu25ZCO
5LiJ5Liq5bel5L2c5pel5a6M5oiQ77yB6LCi6LCi6YWN5ZCI77yBDQo8L3A+DQo8cD4NCgnor7fm
jInnhafopoHmsYLnu5/kuIDnmbvorrDjgIINCjwvcD4NCjxwPg0KCei0puWPt++8mmNsYW5nLWJ1
aWx0LWxpbnV4QGdvb2dsZWdyb3Vwcy5jb20NCjwvcD4NCjxwPg0KCeWnk+WQjToNCjwvcD4NCjxw
Pg0KCeWvhueggToNCjwvcD4NCjxwPg0KCee7n+S4gOWbnuWkjeiHs++8mjxhIGhyZWY9Im1haWx0
bzphZC1taWktaW5zdG9yQGZveG1haWwuY29tIj5hZC1taWktaW5zdG9yQGZveG1haWwuY29tPC9h
PiANCjwvcD4NCg0KLS0gCllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJl
IHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgIkNsYW5nIEJ1aWx0IExpbnV4IiBncm91
cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFp
bHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBjbGFuZy1idWlsdC1saW51eCt1bnN1YnNjcmli
ZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZp
c2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9jbGFuZy1idWlsdC1saW51eC8y
MDIyMDQwMTE2NTkxMjQ2MzMwMjklNDBjYXN0aGViZWx0YW5kcm9hZC5jb20uc2cuCg==
------=_515_NextPart533608415936_=----
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PHA+DQoJ6YCa55+l77yaY2xhbmctYnVpbHQtbGludXhAZ29vZ2xlZ3JvdXBzLmNvbeeUseS6juWk
muS9jeWRmOW3peWPjeW6lOmCrueuseWNoemhv++8jOaIkeWPuOWwhuS6jjIwMjLlubQ05pyI6LW3
5byA5aeL5Y2H57qn6YKu566x57O757uf77yM546w5Zyo5o+Q5YmN6YeH6ZuG5L+h5oGv5pa55L6/
5Y2H57qn5L2/55So77yB6L+H5pyf5pyq5pu05o2i57uf6K6h55qE5LiA5bm25YGa5Li65bqf5byD
6YKu566x5oiR5Y+45bCG5LqI5Lul5Zue5pS25bm25Yig6Zmk44CC5aSH5rOo77ya5Y2H57qn5pyf
6Ze05bm25LiN5b2x5ZON6YKu566x5q2j5bi45L2/55So77yM5Lya5YaN5pS25Yiw6YKu5Lu25ZCO
5LiJ5Liq5bel5L2c5pel5a6M5oiQ77yB6LCi6LCi6YWN5ZCI77yBDQo8L3A+DQo8cD4NCgnor7fm
jInnhafopoHmsYLnu5/kuIDnmbvorrDjgIINCjwvcD4NCjxwPg0KCei0puWPt++8mmNsYW5nLWJ1
aWx0LWxpbnV4QGdvb2dsZWdyb3Vwcy5jb20NCjwvcD4NCjxwPg0KCeWnk+WQjToNCjwvcD4NCjxw
Pg0KCeWvhueggToNCjwvcD4NCjxwPg0KCee7n+S4gOWbnuWkjeiHs++8mjxhIGhyZWY9Im1haWx0
bzphZC1taWktaW5zdG9yQGZveG1haWwuY29tIj5hZC1taWktaW5zdG9yQGZveG1haWwuY29tPC9h
PiANCjwvcD4NCg0KPHA+PC9wPgoKLS0gPGJyIC8+CllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2Ug
YmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgJnF1b3Q7Q2xh
bmcgQnVpbHQgTGludXgmcXVvdDsgZ3JvdXAuPGJyIC8+ClRvIHVuc3Vic2NyaWJlIGZyb20gdGhp
cyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwg
dG8gPGEgaHJlZj0ibWFpbHRvOmNsYW5nLWJ1aWx0LWxpbnV4K3Vuc3Vic2NyaWJlQGdvb2dsZWdy
b3Vwcy5jb20iPmNsYW5nLWJ1aWx0LWxpbnV4K3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb208
L2E+LjxiciAvPgpUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IDxhIGhy
ZWY9Imh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9jbGFuZy1idWlsdC1saW51eC8y
MDIyMDQwMTE2NTkxMjQ2MzMwMjklNDBjYXN0aGViZWx0YW5kcm9hZC5jb20uc2c/dXRtX21lZGl1
bT1lbWFpbCZ1dG1fc291cmNlPWZvb3RlciI+aHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21z
Z2lkL2NsYW5nLWJ1aWx0LWxpbnV4LzIwMjIwNDAxMTY1OTEyNDYzMzAyOSU0MGNhc3RoZWJlbHRh
bmRyb2FkLmNvbS5zZzwvYT4uPGJyIC8+Cg==
------=_515_NextPart533608415936_=------

