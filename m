Return-Path: <clang-built-linux+bncBCJ557OB7UPRBTNFXP2QKGQEG5G5SWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 0128B1C2CFC
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 May 2020 16:18:55 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id t2sf7830093pfc.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 03 May 2020 07:18:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588515533; cv=pass;
        d=google.com; s=arc-20160816;
        b=iqfwprFhaoD3ODsxXWi716X4BpnrxlnoPJYRa1drnGEqe0qxXxxJAPvWcln/kQTJBn
         37LDYAJ7CWo3zN9TjqcArwyhkgkUyAce7td3K1sWLBHDicFJ9RDyJROj81LzqYw5YbWg
         oQv1wz9mt9eVfi66+cLs0D6WPvCLB3xPQg47pGj3RMRdoUe5S2+aa6WIPs33gdRcdyjT
         nkVsAq4MC8u/REPvsV3qlC+rkhK8qD796KUD6gY/Ui1p+Dt3hCt0ohR1m7hvGLXIubRI
         0LZrq+PoGqaUMRDKAbMF6YqPounU1CdpWU6dbll1ZTTyGrShkqWDn9LhPIzM3Ty6G3Sx
         vZeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=2mbug/1GAjAS5BtoKAWIBLpMB6yV2mbmQEZWeXtkYMo=;
        b=E0pvaO/yLtfj08ahL3I7aPnvld1TGk3QjHDaCKl3Zfwh740MA7hZ7CbJRDWMte0RxU
         cfJfdQgEVqaCTE66U7mK84AkdUze+hBF5RB2NGJVfM1iOC0MpAN8hqrLvyYXHl0miAkk
         HBufCyjAvSxGusUa3zNBBB8tR2SIgnTZJ0yU0H7fWnJx9u+hQ/nm7hgFI76OE7Kpk78P
         FWJzIqAuBqI0y5LazMo46R6p2gi8ug4RPMLy3/W+tjs9iye8HsOu2x14wEHbSDYhKYRx
         VEijYmmmOZWmMocYsDARowi1QNMZ/08rnnjyS2QnkTzDYvFKCNfu4I7yBNrJaNP/rijO
         rGEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gjJ625Ga;
       spf=pass (google.com: domain of fatimata.boubou.sarr@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=fatimata.boubou.sarr@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2mbug/1GAjAS5BtoKAWIBLpMB6yV2mbmQEZWeXtkYMo=;
        b=h5WsZNOQ4nwUXkJBhxqoc4K+Hg2YagpsGqQSnQ0EHKADL4JwdHwgqw8UIdTpTuceM3
         BFln4Xbbw50Ms3qx7uH5ggXuTCkxBqr9hkzwhdaEYE+XadSBSriFbcwEM/dBabwS0X4l
         l/agB7UdirhULwlCGvqu8sVmelaNkitVBaSUiqYPCJ4UQPTYppIIHJNubKRljWje0tys
         WhwiOQkJmXUNiVxuxiY20lIRSXNQaKaIh05u0e7yol//unX5+yYXilJYuIQclyBY0YFu
         9q7KOXytmif286uSVt5KmbrI8D86g2LG9M5ogjiezZ0Vq+j3BAX4U8n6Yc8fKLCs1V/V
         YyJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2mbug/1GAjAS5BtoKAWIBLpMB6yV2mbmQEZWeXtkYMo=;
        b=Le7TgLy+bEsBw3JZeXTaE7uRVELHuWhY0tFZBBZlnJtjWmGoUkrAJDkwzveZrI4W/s
         lpctzp8jDpGfsZKqwHepvsv+Z2t5Q9ylEFq+3JdYRH7XzAF+iG71P7fzg+sPr5rJ+r4p
         vfIBKbqTTs8mDkyKXJxU4e/6pg5ZlQHZ+DgSIk/5Ibs1NN/OTcu2NhgM9CjvNzMxiwhP
         t2GXSZdld73TU/Kc+Qx3xzxQQIIyNGWoyqBEJxOoOLXtR+6lWrmea5xvkYamGjIgbGn8
         DSKfmieGVn+0jLfy87To03ci4pCyWZMEY55D9V9slviCE/1VLJNjqlc8fQo5r+LkyQ7W
         rwdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2mbug/1GAjAS5BtoKAWIBLpMB6yV2mbmQEZWeXtkYMo=;
        b=PxWe7V655u020KN1UwuGloZ8o3TVpY+1nQHo0twofpwDue/iSgQk0ZvhGaWYycLK7J
         MLSRtwVgTTIf5uy+DpOuT9+ygSq6Y3bqVtIHLGsoSCmBojfYZJs1legTyBxOzgTSrl7x
         TOBQ+XyamJiKuEFVBdX5yoWxoH9kz7pDMzx36x1dQOvlVeHLdMHFYxtZ3dMBNDYVFjsB
         M2ehTsmsfnn1Vgs6nciCsozdy+aga1NskK6tqgbhOKfujzPBO8F0AilLux4t0/5YDks6
         qZNoRdnQwe7cPnfhnQUvJ7ZybviC453SIdnked3A4OQZYRBWojoH/t7jwgtkM0lXti1r
         h6uQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ1Djx/OXk2vkKqlVYvDw+C3wO3k3imhXC38I1/ZhBmCfJiN7uG
	XSS4E55wQy1aY06MOQu/fsk=
X-Google-Smtp-Source: APiQypLNPml3In49XX4umL74IUqQrDRdy4ryaIAxD+ufE1TqAdZMDbDa9sYEsEqJZPvGmBKYeRAsmg==
X-Received: by 2002:a17:90a:db0a:: with SMTP id g10mr3903070pjv.54.1588515533055;
        Sun, 03 May 2020 07:18:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls14689265plq.7.gmail; Sun, 03
 May 2020 07:18:52 -0700 (PDT)
X-Received: by 2002:a17:902:a40e:: with SMTP id p14mr14207051plq.132.1588515532574;
        Sun, 03 May 2020 07:18:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588515532; cv=none;
        d=google.com; s=arc-20160816;
        b=MaL9s6SFm/slFWRY0eM3urYImGTZoqIrdrYO0wK/HsZ+vofEtLSzpYuzMgRyxOifJY
         N245SBvYNE6l0Qum3VGt3XEAnCOAsRJzRG0hFiqCkS8OBr3apk31daxxpfUhKjNu+UnA
         Ig7BqnFO3Vv/ZTqbvQYsHnZjh6Rce6mmkRA98oAh3ERCnw2TR38zE1C7F4zkjnPATAEQ
         d0AXPloty9Z65p2oHlXHjrcCbRjXtBzLCrR0iUlI6FDVfdH3oW4YqtsYyIFtbmGW74w5
         J96ViKFGxGjKUCOv6Z81WRQ6RYHxcy3iDpUEadPHG2oJyxRGMP3BwngOEysVcn9WjMWe
         mDdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ExVo+qSp5YqKBaVG4Au+WaPDFECwL6a8nJSrlfAHidI=;
        b=tgAzh6Ian4zn+OS0WbVPJK1mfaWnzq3BVHLIST6WkYv7AJ5VLhjBFaSfSUq0hRKPcm
         09ES/gDyw9oKxYsTjbdxqqxghqpXPXWVPjJhdUfscRdm72hSYwcNpl3gGqFtrJ2UCtJm
         s4puDuUylbiB5EuTBGCXEt5iR0zQsATJj+dzzhrRS9dYHbyMAlk3BQ/AQ0qpJN1qxV6D
         cR+q0BTCJYP1b2qzXfcAUdCu6xX+4zOr6zCWyAPuoO+m6cuf9HoV1twGHycGqwgIjjNO
         B/4v7XWly7gAqryKkbShxSbEl1EqAlTcV3/pCHs7Trv/ERSkb5mkagm1NqXmnGdHmLy2
         Y8NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gjJ625Ga;
       spf=pass (google.com: domain of fatimata.boubou.sarr@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=fatimata.boubou.sarr@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id x5si268038pjo.0.2020.05.03.07.18.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 May 2020 07:18:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of fatimata.boubou.sarr@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id o198so7738601ybg.10
        for <clang-built-linux@googlegroups.com>; Sun, 03 May 2020 07:18:52 -0700 (PDT)
X-Received: by 2002:a25:f206:: with SMTP id i6mr21042971ybe.415.1588515531860;
 Sun, 03 May 2020 07:18:51 -0700 (PDT)
MIME-Version: 1.0
From: Amelia Ibrahim <ameliaibrahim520@gmail.com>
Date: Sun, 3 May 2020 15:18:41 +0100
Message-ID: <CAFOGR-_PMZ2H=9jQqiAYGL-dprxwnseTntUR-kbAWqAV0A7hdQ@mail.gmail.com>
Subject: Hello
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000ff368305a4bf170f"
X-Original-Sender: ameliaibrahim520@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gjJ625Ga;       spf=pass
 (google.com: domain of fatimata.boubou.sarr@gmail.com designates
 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=fatimata.boubou.sarr@gmail.com;
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

--000000000000ff368305a4bf170f
Content-Type: text/plain; charset="UTF-8"

Hello I will like to talk with you

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFOGR-_PMZ2H%3D9jQqiAYGL-dprxwnseTntUR-kbAWqAV0A7hdQ%40mail.gmail.com.

--000000000000ff368305a4bf170f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello I will like to talk with you</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAFOGR-_PMZ2H%3D9jQqiAYGL-dprxwnseTntUR-kbAWqA=
V0A7hdQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAFOGR-_PMZ2H%3D9jQqiAYGL-dprxwns=
eTntUR-kbAWqAV0A7hdQ%40mail.gmail.com</a>.<br />

--000000000000ff368305a4bf170f--
