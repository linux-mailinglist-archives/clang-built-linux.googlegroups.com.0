Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK7OXD2AKGQEZLI7BPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 702601A2A99
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Apr 2020 22:42:21 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id f11sf3022794pfq.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Apr 2020 13:42:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586378540; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZkQDBb38U3Yx/2IAzvgdnNmqvAgeb1LdJRvM1fcQ9uaWlb5Uju8pnQRArgsXRgXjfI
         Xc7e3lUHUXd/eK0mEJALkw08iFYpydIo3G2aIhOnH4VjT42zKXFIYO2brfpNpK3AzWpt
         obAIYH148UQ0b3godIUf4OuEjfxFPUvP7YuucQqlGeUR7CRA16VHh+n64T1lMZKO0UHP
         GSaAY6ZsPFIlXhp01YCpfmZ8EywxergJ96tuAlovxboua4TlV84zqJcutPkSDrgpTjlf
         XHJg2Q0Sq0x+RSKB9oBhX7xMM6z8Qh+CUDiPeOtKHQPJMIXjRe4lovig1C2tfQ2Zs7gR
         mxWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=j+F9D1uYJ0BnQTV7EiD0lFY2JigH1xccmEZ/0dIdzVc=;
        b=GEFsFx4vP0DHMuoA8UyYTsKNRTfcvOh/LGSIze2eahDPRyOujP04pY2dwmcLzlePBi
         Bm/8qMvCHh1yWZyRT3Lt6A0tTWcD5K+HPS5EfSfl3MDQyKlUgMluhx/IKRmNVB/fiPsZ
         5ktEhLv4oYsMNxgiMI9+UwaER4kOu1MlV5KHXa91U9v4YS2y6p0j32br8aX6+scX83yg
         2qDxvj1+CcO5czhclNqiJBGLHx8yHG8Tqd4SAPfSnKKjIllhM8rjvyahHSXPPrC/ICuc
         FSct/6kvsn5pT+Ac4pbW63ptRFGghcRn1B/XsjwUzumSe76FSq0DwdRyfnTHfCDCxQr6
         vZ7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e8xyHsUQ;
       spf=pass (google.com: domain of 3kjeoxgwkams4uv9rb24zv89x55x2v.t53@maestro.bounces.google.com designates 2607:f8b0:4864:20::a48 as permitted sender) smtp.mailfrom=3KjeOXgwKAMs4uv9rB24zv89x55x2v.t53@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=j+F9D1uYJ0BnQTV7EiD0lFY2JigH1xccmEZ/0dIdzVc=;
        b=dT9GzmxtlL6JmE+rO+KVvf3EdJEmrCo3rYiCmLbsLf3LlcV9GElh9CIHrz+g/jab/F
         t3tYwVcOZ+N9Fbq8K7c+KOUikVMgKo/NeHNrbNE4JBvkeq97toA3H14vY3KWhM/7cKiz
         zuzKD2wqk4a6gLpurXbvCoraZk1DQvOBVTto6chu8Ymtitm1Ufd1BbugF1lsiisHSwNo
         iEci8elU4TJYgxix0DrIxlKgGHs+ieEBAZPoC2udDxJK8dhsYXbdcFdNMaBQGl8sbZCS
         CJs4N08VnX5LfNLiG9/Ke2XCO+JFeRbprHbh9Wfq/CTPNFQ3BmVUS5ctmQsustK1ouT4
         bmNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j+F9D1uYJ0BnQTV7EiD0lFY2JigH1xccmEZ/0dIdzVc=;
        b=sopIPA0vZq7DvU47ivC+iDLxTrlRhroHJ4DPk9IXPn/InxigPgS7Lxs5BC31XefRtj
         tTdLKWK7rnEGq7/iPObU5f00COioDVOnKs2H68ea3E88NWMx1zxwUpIAXv75yC8PbMoQ
         lPX/oG8R5GSNKOtvg0R1Zay6FiwVQsxFzgcyqYANsB7qJxEj1bCGmrjgBlsff4ZDVu3x
         l1YfAK//0vu8RQFR6TKFoK/c5TcBQ+8dwPB6phwdIxl2J98uB9+ZfQI7JZaNAg3Wfmr7
         oE7n0G6SHnYf2ZKM+oiyLU2oPnk2pLY+B/3U/+5ibF5ElKCbRrrwsAskZvaWDfVzt0Pw
         beZQ==
X-Gm-Message-State: AGi0PuZeQKoS0t5qrUQMZA2ocbYlT+qlRwkuXlQd+xbz2GitKKi6EXxR
	FOT/IDqZUZVZ46Z/bvcUF3k=
X-Google-Smtp-Source: APiQypKbQOJrseTujsduiLjitucM6DFJrOrYfXIuw18nP/v+0wDNIh6tEuz+mJHkfUfZjdlkWhpZKg==
X-Received: by 2002:a17:90b:2391:: with SMTP id mr17mr2597360pjb.29.1586378539748;
        Wed, 08 Apr 2020 13:42:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls590869pjo.1.gmail; Wed, 08 Apr
 2020 13:42:19 -0700 (PDT)
X-Received: by 2002:a17:90a:2f62:: with SMTP id s89mr6317862pjd.100.1586378539270;
        Wed, 08 Apr 2020 13:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586378539; cv=none;
        d=google.com; s=arc-20160816;
        b=bPutCNFsffac/9g3DIZwl00tk/3PJhZUnEySbCNeLZxhrr+u7QyPy2DRKpWCZDgOue
         lU/oiJCFP3Su3W3VUEW5N2zG6Ak3sag8wFJgQHiN5Yv0HGX+HqalhEzUU3e8ck65LTiE
         9COv+h8TDjE7wIRh2qarKg4tySr2FFVt1UU/L7WI5xFEfXL62LzaptzZ1kC25/qIyNi2
         JXIFbAWU5Yb9YPdE3btcq3UrGrJMVGrnnl5vfP6JVEnY3T3pKF/+0yeRWZrElrlc7xgG
         fzhV48Q8YN59CThmEZU0TwaAaAG9WE5TGqujE+9BgOnu7Tctjg4yq09rn7N3LzNUMYVG
         8Wjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=kp7SISJ/DvE5X8W1niSLzjkpUOfPIq+y+z5+old1Dxc=;
        b=Cu4CjWjldkcCWE8y7QkZBbCFAih6LvFxCcWfYlsUKpxArTfY9lJfBqsktg7ym3bahs
         II4XbMfP0vcV1VQRJpyowcUzE7aoj5HClPiKjk9NE5Drbl+hRf4qygER+l8nH1XQOtqQ
         j/k4jPUkveKYg1qzdjc8e/7h36rNez31AiVO1vc45/TPu3fDt3tM0Oo8LZsMK9yAjvOO
         0WHFHA1o8QyKrY3gxVbok8lhUB4IdLv/ZMQQ6OXgaLIHWzRelDt7V3PHUwsqyBSvbICY
         oKC9FPMGgRP7bOYRGeqXxjwGITTI9o3x0gjj0cOYlndKxOv00SaJ2I72zhyg5rzc1+xn
         ETDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e8xyHsUQ;
       spf=pass (google.com: domain of 3kjeoxgwkams4uv9rb24zv89x55x2v.t53@maestro.bounces.google.com designates 2607:f8b0:4864:20::a48 as permitted sender) smtp.mailfrom=3KjeOXgwKAMs4uv9rB24zv89x55x2v.t53@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa48.google.com (mail-vk1-xa48.google.com. [2607:f8b0:4864:20::a48])
        by gmr-mx.google.com with ESMTPS id c207si471104pfc.3.2020.04.08.13.42.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Apr 2020 13:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kjeoxgwkams4uv9rb24zv89x55x2v.t53@maestro.bounces.google.com designates 2607:f8b0:4864:20::a48 as permitted sender) client-ip=2607:f8b0:4864:20::a48;
Received: by mail-vk1-xa48.google.com with SMTP id p189so3174893vkf.8
        for <clang-built-linux@googlegroups.com>; Wed, 08 Apr 2020 13:42:19 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:ab0:49e4:: with SMTP id f33mr6887829uad.86.1586378538016;
 Wed, 08 Apr 2020 13:42:18 -0700 (PDT)
Message-ID: <0000000000003d65fc05a2cd899f@google.com>
Date: Wed, 08 Apr 2020 20:42:18 +0000
Subject: Clang-Built Linux Meeting Notes - April 8, 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000003d65ec05a2cd899c"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e8xyHsUQ;       spf=pass
 (google.com: domain of 3kjeoxgwkams4uv9rb24zv89x55x2v.t53@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::a48 as permitted sender) smtp.mailfrom=3KjeOXgwKAMs4uv9rB24zv89x55x2v.t53@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: ndesaulniers@google.com
Reply-To: ndesaulniers@google.com
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

--0000000000003d65ec05a2cd899c
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

Clang-Built Linux Meeting Notes
http://go/clang-built-linux-notes
Meeting: Hangouts Meet


April 8, 2020
-------------

LLVM=3D1 patch landing in -next
LLVM_IAS=3D1 needed for CI
LD is now in /proc/version in -next (Kees).  Android backported to 4.14 and=
 =20
wrote a VTS test for this.
Nick heads down on =E2=80=9Casm goto with outputs=E2=80=9D bug reports from=
 Linus.
Integrated assembler close
Probably can enable now for x86 for next
arm64 needs CONFIG_KVM .inst parsing fix
arm32 ???
Android had an emergency update to the compiler release clang-r377782d to =
=20
fix an LLD npd for mainline-x86.  Does CrOS have mainline kernel builds?
Merge window opened for linux 5.7.
ppc nondeterminism issue
0day randconfigs finding lots of issues
KernelCI needs
to upgrade to clang-10
Test more branches
Add more LLVM tools
Need to integrate tuxbuild client into ci
Fortified memcpy issue using ToT LLVM

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0000000000003d65fc05a2cd899f%40google.com.

--0000000000003d65ec05a2cd899c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><h2>Clang-Built Linux=
 Meeting Notes<br /></h2><a href=3D'go/clang-built-linux-notes'><span style=
=3D'text-decoration: underline'>http://go/clang-built-linux-notes</span></a=
><br />Meeting: <a href=3D'https://meet.google.com/yjf-jyqk-iaz'><span styl=
e=3D'text-decoration: underline'>Hangouts Meet</span></a><br /><br /><h1>Ap=
ril 8, 2020<br /></h1><ul><li>LLVM=3D1 patch landing in -next</li><ul><li>L=
LVM_IAS=3D1 needed for CI</li></ul><li>LD is now in /proc/version in -next =
(Kees).  Android backported to 4.14 and wrote a VTS test for this.</li><li>=
Nick heads down on =E2=80=9Casm goto with outputs=E2=80=9D bug reports from=
 Linus.</li><li>Integrated assembler close</li><ul><li>Probably can enable =
now for x86 for next</li><li>arm64 needs CONFIG_KVM .inst parsing fix</li><=
li>arm32 ???</li></ul><li>Android had an emergency update to the compiler r=
elease clang-r377782d to fix an LLD npd for mainline-x86.  Does CrOS have m=
ainline kernel builds?</li><li>Merge window opened for linux 5.7.</li><li>p=
pc nondeterminism issue</li><li>0day randconfigs finding lots of issues</li=
><li>KernelCI needs</li><ul><li>to upgrade to clang-10</li><li>Test more br=
anches</li><li>Add more LLVM tools</li></ul><li>Need to integrate tuxbuild =
client into ci</li><li>Fortified memcpy issue using ToT LLVM</li></ul><br /=
><hr /><br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000003d65fc05a2cd899f%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000003d65fc05a2cd899f%40google.com</a>.<br />

--0000000000003d65ec05a2cd899c--
