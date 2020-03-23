Return-Path: <clang-built-linux+bncBCLI747UVAFRBKXO4DZQKGQETMK7A7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C1A18EED0
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 05:12:27 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id e186sf4688040vkh.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 21:12:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584936746; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yrg0PmHNIJuxtE2Spq2GzUzrSDl2OO/Bj7Iww7O5dSjb5j0vbLzcABR2Z8OyzSZcOx
         D00xgmhJtvfYkvN33INB0CGgIoG2XdA2fQ7J9K9p+qUno3JTlXd7hcPLyg74hBbV4tiR
         t/My1ugYsGx7OSlm9DyX7G1rsMuBbDvaONu8r9DQ/5rUauaDpI1903+nxasTUyPA/j1s
         FZygvCUXFPNFNevXEx0bPwxq9e9GXecOPOgpE+DYiXepsy9RKxNEe33ETNiHAcnuxsEY
         e8qBbHouPiyxNwzL62lJNRDW4Ulx/cAPrdzfdWUr6m/OMgIP7RT2h5mS3UmReyDoR57V
         UEIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=tUm6349cNoO3BTgI/uwtOhitDYCxioQB/mmY+kpdLjo=;
        b=vWBLAd9ThG0ew7fFgvQfWMuvPIIw9g9Y/AjTIFbkpr6BfRayNRryBALWZxQnxfK/up
         SnueWMfRxeKOtK1/OrgG7YOHpAmDq2K5cH5yhXrYbEAcBGQz0j1pyysx2ha86Wdiadmq
         6ZeBzu5Meee/gRW2rZ/xe0uc9ZjqAABbXob5ZjcTqdHL3tH3bnkZduP1yQgb2AjsarTY
         Y50k9P/CIct9RFywoRHvJX84zwUMfjqXpJc3eZSTqzn2Le73qnRFRvg9aQUH9wWbPuTv
         abezSkM/lbuPjlP641P5/L4AVqrj8SzNWwemrndTajOwnpQ1j1xazxPqTnB7gUjgK++G
         YNBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=j+i+JegP;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tUm6349cNoO3BTgI/uwtOhitDYCxioQB/mmY+kpdLjo=;
        b=I/0aymRII6PJ30I+yjmLWfC3rBrydSp8kI4ZrPCj4N2yrhVXp8PBOl7CCYAq9DWAQf
         fsOivepLBeNS4lAYUFUMyANtMW9nKi5C7xz/teGJOjV3HiDgr4c98gKmmEN3TqV/3msP
         s0rPy4BOeV2ITKGIhWX8GTEFljDg37LcuuZqTtzoSkBgy908gW1cASRmxMZp8O/geszA
         IqUNPWgElhuuEMsQ1SsssySO0v2PnoGmDbmXIw6pZgvIe7RWlrOo6jLbNdKPmJ+SvnHP
         Rd1s6MLG24cAsnwDCit5+aIB8KFqsjllTCQpk1eGL1IeconMv+zY8BJ6Ci7eO52SiEkV
         6YpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tUm6349cNoO3BTgI/uwtOhitDYCxioQB/mmY+kpdLjo=;
        b=VlBb0T8lBnYWbRzXpOd0HyIlR/VdIzj86QyxPuloZ8fJTzb9LSfZeiUUaptlL3+Xac
         qt/YrAolaC9Jz39DEI2jWIFruW5u60UgDSkBZfGuHAIEUwot+A7r8jGb8RFPlfiPOGzB
         Dmp9GGRRxfVIwySgsxIkPhwjTpf7wcx9GzaG6J9TFZKzfcgQNUzPwzRe7a7gPBXW3CQM
         9lAnlsPr2GhyAl0xCjzoZwzIqk48lomsfR5ZgxAPcGbPPsMRDIFGZhGvY4mvXQ/Rio9l
         cbgreTVJZ/7FN6jZEzchongvfNLcl/lh7STdbcFtgQNu5ehKPVr9LR8dYbAybGvr+6Ip
         CtGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ11I2eCkVs8sByYsWHgyf12ScJruod29bbaRJb9iithIxz+rFD0
	+OkUQPI/CEbCLOhAWOLJPEI=
X-Google-Smtp-Source: ADFU+vt7FXKojJQLSDlPReOsJsuq5QbzDQWAXpW4ncGx7MfGg4hU0KozstR8TNAjLZsexls6LHHGrA==
X-Received: by 2002:a1f:2414:: with SMTP id k20mr3521665vkk.57.1584936746339;
        Sun, 22 Mar 2020 21:12:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2a54:: with SMTP id p20ls923649uar.7.gmail; Sun, 22 Mar
 2020 21:12:25 -0700 (PDT)
X-Received: by 2002:a9f:3711:: with SMTP id z17mr194002uad.122.1584936745848;
        Sun, 22 Mar 2020 21:12:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584936745; cv=none;
        d=google.com; s=arc-20160816;
        b=Xbhb9YNAc4VklsS38ET7wmPw0Nw5jbBDJjWEDYYvcW5ss8ywkMDDmRfoL41M4JJ9ii
         +ZpwNqRGazIRYXqgL4Mr2tQR7tjaR7u2DCSB3e84sXuR4oyrp5zGfyPZvE+YhzxQGAfc
         Gh4KMvzAJkPJSTiQuQHa7QXt8a5/xIuLi6o8ZqszXSwL1ivvQfvwyDzS5zb188AXeGtf
         63OB0km8U99van5kLNiRrTpLOTzWFuF+1mFo/kmRtdYocxz1EwCq6k2JFxpRbFQCFCtd
         IixpsGmLHlCRA0MQkp5H4TG6c7tyl03ucLFSdqExyD6k5vco2pZ6zbz7p8c50ilJmzNq
         mjUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XYCpWLFoqlo3j8gqs30h/uNC3dpJOpqQbNYX95JkUjY=;
        b=jv1gbv/CCuDchUqOPUQTrlXNASMH/2+LgaqyBFrXKYgzgGLk19RIt3sDOWLSBk5KG4
         czX42ov5VR9DBUtbYnqUZFrld5zL6HomFb7S3WtHSoVz+1bSk+PULXmt+U06BPC70KFI
         PE+/ZjER1ovzf/GC3XI8+3rG0Yn8WctTkFSoegA7PyJERa7rwEKlKtuIvqYRYYbQdq9s
         2Z5i5N0tP6b/C6LpSNzbeigGAq8u+kY4vr3ZE/wQRkW0gsVuinWwZo4+l41XkFQlgzmt
         I4mF7ImWbavFkXbm4byw08RwEqVie8Am1K656uvUfCwukiUUccWA5ukN1Owdcytzr1qX
         Z+uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=j+i+JegP;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id v5si265123vsl.0.2020.03.22.21.12.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 21:12:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id dd593b62
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 04:05:27 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id befe47f6 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 04:05:26 +0000 (UTC)
Received: by mail-io1-xd2f.google.com with SMTP id q128so12724864iof.9
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 21:12:22 -0700 (PDT)
X-Received: by 2002:a5d:9805:: with SMTP id a5mr17090334iol.80.1584936441659;
 Sun, 22 Mar 2020 21:07:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org>
In-Reply-To: <20200323020844.17064-1-masahiroy@kernel.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Sun, 22 Mar 2020 22:07:10 -0600
X-Gmail-Original-Message-ID: <CAHmME9ppPdXCrD8yOeSdesHT7t=dPHTgV1cnLPXbwCqqM+rfCQ@mail.gmail.com>
Message-ID: <CAHmME9ppPdXCrD8yOeSdesHT7t=dPHTgV1cnLPXbwCqqM+rfCQ@mail.gmail.com>
Subject: Re: [PATCH 0/7] x86: remove always-defined CONFIG_AS_* options
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, Allison Randal <allison@lohutok.net>, 
	Armijn Hemel <armijn@tjaldur.nl>, "David S. Miller" <davem@davemloft.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, Kate Stewart <kstewart@linuxfoundation.org>, 
	Song Liu <songliubraving@fb.com>, Zhengyuan Liu <liuzhengyuan@kylinos.cn>, 
	clang-built-linux@googlegroups.com, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: multipart/alternative; boundary="00000000000098c8e105a17dc5de"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=j+i+JegP;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

--00000000000098c8e105a17dc5de
Content-Type: text/plain; charset="UTF-8"

Hey Masahrio,

Thanks for this series. I'll rebase my recent RFC on top of these changes,
which makes the work I was doing slightly easier, as there are now fewer
flags to deal with.

Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9ppPdXCrD8yOeSdesHT7t%3DdPHTgV1cnLPXbwCqqM%2BrfCQ%40mail.gmail.com.

--00000000000098c8e105a17dc5de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Masahrio,</div><div><br>Thanks for this series. I=
&#39;ll rebase my recent RFC on top of these changes, which makes the work =
I was doing slightly easier, as there are now fewer flags to deal with.</di=
v><div><br></div><div>Acked-by: Jason A. Donenfeld &lt;<a href=3D"mailto:Ja=
son@zx2c4.com">Jason@zx2c4.com</a>&gt;</div><div><br></div><div>Jason</div>=
</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAHmME9ppPdXCrD8yOeSdesHT7t%3DdPHTgV1cnLPXbwCq=
qM%2BrfCQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAHmME9ppPdXCrD8yOeSdesHT7t%3Dd=
PHTgV1cnLPXbwCqqM%2BrfCQ%40mail.gmail.com</a>.<br />

--00000000000098c8e105a17dc5de--
