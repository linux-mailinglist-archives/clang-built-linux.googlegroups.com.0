Return-Path: <clang-built-linux+bncBCA55Q7W24JBBFG3SOEAMGQES27TZOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id D22C33DC3EC
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 08:28:36 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id p12-20020a5d68cc0000b02901426384855asf3977235wrw.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 23:28:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627712916; cv=pass;
        d=google.com; s=arc-20160816;
        b=qV7pXoFnHSzLEt0ZzfF1MelNYWQXw+TckYKrxZGQl/xBpvM4ualC17KF1AQfsHvd2H
         O39zIIa0fCfXI4PDRd8sgakD4cLtM6MWp7LYnuWWor8QXf3ElKVzEZ3Hl8trLi4OtQGk
         437WCDRPe8EMMwtynYqdqWtXswrZ6J2gunS+ibr96KFTI7rH6ERSqu5FVz7KRj5/JtFm
         qGOHl2BHq+NXmmVV0tzBcVRpJ/+QPusrgJHcqKqCkiPzVMT/fdJpw0rsFrh1yi6LaxuO
         zWAbtzsfE9QjKXvhB0uCBlgk7Qkk7dvxEHa8jBxnaRg+UOvSPlLS6uy0ey8xBkz1zP3d
         69Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=DTs5PhSVSbI2evx43jGdNckzkV8oYcLgGPZeLmSkC0w=;
        b=kx1kdkZ962t05W+WcSfYMHuqMUvMEnNF6+BkAF0aO127FEjhl3LB5kJyN+BXFvRC05
         oU8PGBbOIjFPVGEmz4AJSORaqGa4pqNbPBmEzwBpCo13oZBWa4/CnZKHX9MLkY7ccLIk
         SdbJ3NU417K6INtF84kYPXgpgJWaGWhSX2RuljkkLc176UxjbTF90skJFs+c7022i2VG
         R6wga/cIVwI2oJbqOgNn2dBSHGIq8yUHUNgDMdE2yy22dyvCZY6kZghhCaGFocxWLP0f
         JJHjSY7x34Oobxps6GM1qcCHvHY3r9i+fcQI2W6ZT5KxBwEjJzKYAyvRXWlVmnNPP22p
         FnFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gf5CSO4D;
       spf=pass (google.com: domain of aziaboujulienne@gmail.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=aziaboujulienne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DTs5PhSVSbI2evx43jGdNckzkV8oYcLgGPZeLmSkC0w=;
        b=ib4C3NPXgS42ZHbGf1H4I84ohMIEpxjRHEsqhL8n62C1EQ28Z6i/yLhe5C2CeYmlpn
         qPIb4mIY88RULny2SeQ/PdEGBaK4mhp7elz7Ym92Abt5utDOuAgk8BZ/E75tv8PUEhyq
         8Leqwlmt93gYvD3T7wE5DHChjgUAMRSLA8MGTSqh9i4p+Z1CCIBAQQoEDWzopjFA3Ym9
         v9ZN6tfrHVwmKlcelZjIfmnO9CRwSdHs9YlQo5J0yhJZ04SpEs27+Hhckp5ryB3HsG7b
         Tlx7SHFqcIgSgQFvXP2dBzHALbBVtsXLIu+XZFmsq6gFJ28lrbpBroTK59fUSGKwNk5T
         REiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DTs5PhSVSbI2evx43jGdNckzkV8oYcLgGPZeLmSkC0w=;
        b=i4p4Jc470KoiUkCM4kQuUTA31woK6xLlaUx7CM+OdThHH/Cy+akqII29T05NqAToYP
         ZkRBVa2QXjXur3o24E5XGiae5il6pf5knClvr0a2oaWZvh8gvzwlEfnwKCW5AkF3cipo
         w4Rl6KmuMqcGBsdydEZpCU0D5cIiWjUORtMGbqtV5/KW+ptUd7PnmkJxzWrGI0Zzoo4e
         b0iX2+fpfRN+PbPhZ+2A4lk97KU5ypSkNbW+iqdWNslKdBjteNaVhe5tuEi/nvtniuqt
         GVhl2YFvhpx15yGDIkm2vc8YOvIEW5YKZjceE5rUFOj3BNPILec2pAYr+tYDnRYd5Y5Z
         T6YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DTs5PhSVSbI2evx43jGdNckzkV8oYcLgGPZeLmSkC0w=;
        b=qf8e/mZ3x/xmjY9XMOEqAaDKff5kVeuB/kc4izpuh75kpIoodIWpGRPEE/GaxrnbXF
         4YO9HFql0kM89c8aLtIIiGxYOqyTaAOsswx64ddhF2GGCjOUnnH35/1DxJI9F1d9DTza
         qHcypptxbnOwJ0YPBys7NgugzH7/lyxKcwZ/FqRrWUixoi+fhU0lHXF6Z6FOMTN7zJtw
         D+BGM1LUB0zW8KNNROy870i4Tz+pwyOvs+zs4vfjfe3PMGTnLarnhmYCs58ehtldoot0
         y1vtZp7stamPCDb8kRHDleE3ReNVn8cZrEFFw1l2vfUg2iYjEHfUU25XdzgoPUoiyRSa
         5XCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wVVPREL61GNlaMrhT5Zdpa6itaWigdHWzEI8YzwWWRw5xUN80
	Qk/pACs8nbhoEPIyA/2i/D8=
X-Google-Smtp-Source: ABdhPJygb55I/1ydcjj27fnmBLZhDMzp4sbvm5npn3vH+Xm6uvXUGkFeJKHquYJodWQmaHF9KRY0pw==
X-Received: by 2002:adf:90c6:: with SMTP id i64mr6906184wri.168.1627712916633;
        Fri, 30 Jul 2021 23:28:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls3044940wrr.3.gmail; Fri, 30 Jul
 2021 23:28:35 -0700 (PDT)
X-Received: by 2002:adf:eec9:: with SMTP id a9mr6537384wrp.226.1627712915816;
        Fri, 30 Jul 2021 23:28:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627712915; cv=none;
        d=google.com; s=arc-20160816;
        b=etv8R1/JQdAz1eaOJKhcf3aeLHdKARNieL6N/69YGivq7EJmhENOBiTIuTacmQx0P9
         oVmBGNoNO7o13GOzCHku+M+LjKNSNnGbcSywmiKoWQuHWXZjD/g2kJI6Klgwglc5qP+X
         YFhuiYejdAFLt28w4rqdtLmyduskvnEM0owo+QKVQe+20cPVXErlbF2OllZIDCHeJcCA
         jtNo1JXCZNivjDrTbbpDBksjr7oqbqZ0CxqnBfrWdKJUURjn0ZccZGl4F6TQ93UnnzoK
         zfv6633TftW/6L9uWn5zF82w2HDnGljtrOPvi9eg+qI6QonF4yl08H+ehb/MCAwdeJR9
         TN0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=XQO4BWHXcdrxoYncxAFMLYmNtskCn39zHeurfunTW4U=;
        b=Y7K6bbJJOvDZ2EOedBRTEaZQrT6OO7yzDef+o1+FP9PjbKEdxmGgqwMQneOHOuOYzm
         vdxozufBPZE0ugu+4HOLoWBiX597seAzIdHoti2jduXh8n+P6E6zKkgUumYQJuenW1ad
         EYTtcb4X8LkMQqdgY7z8C+EDDZBfICJw3d56mFkGPAebCPs1aL+L9TwvVayDw+aNrwaD
         Yc27clcrAP014Au9THs9nD7lby6MDWJD21INovJ2S9Tq45LNuSwVnqOFj0nJaieBVVrw
         KB3c+/ouvvo1OkXwYQ4xAh1NcIg/BgM5kl4j+w3y6xvbNxNCHVADto8bLmNPx8/cgNz0
         T/hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gf5CSO4D;
       spf=pass (google.com: domain of aziaboujulienne@gmail.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=aziaboujulienne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id x4si62691wmc.4.2021.07.30.23.28.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 23:28:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of aziaboujulienne@gmail.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id y34so22463055lfa.8
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 23:28:35 -0700 (PDT)
X-Received: by 2002:a05:6512:224d:: with SMTP id i13mr4117554lfu.541.1627712915556;
 Fri, 30 Jul 2021 23:28:35 -0700 (PDT)
MIME-Version: 1.0
Reply-To: brownhelen909@gmail.com
From: Helen Brown <aziaboujulienne@gmail.com>
Date: Sat, 31 Jul 2021 06:26:46 +0000
Message-ID: <CAHTJgGvfx-38tzuXqyaey70xG583XGp2DqOOa1dOy07FzgUB8g@mail.gmail.com>
Subject: =?UTF-8?B?56eB44Gr5oi744Gj44Gm44GP44Gg44GV44GE44CC?=
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="00000000000020cc1505c86572ba"
X-Original-Sender: aziaboujulienne@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Gf5CSO4D;       spf=pass
 (google.com: domain of aziaboujulienne@gmail.com designates
 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=aziaboujulienne@gmail.com;
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

--00000000000020cc1505c86572ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=E7=A7=81=E3=81=AB=E6=88=BB=E3=81=A3=E3=81=A6=E3=81=8F=E3=81=A0=E3=81=95=E3=
=81=84=E3=80=82

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAHTJgGvfx-38tzuXqyaey70xG583XGp2DqOOa1dOy07FzgUB8g%40mai=
l.gmail.com.

--00000000000020cc1505c86572ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=E7=A7=81=E3=81=AB=E6=88=BB=E3=81=A3=E3=81=A6=E3=81=8F=E3=
=81=A0=E3=81=95=E3=81=84=E3=80=82<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAHTJgGvfx-38tzuXqyaey70xG583XGp2DqOOa1dOy07Fz=
gUB8g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAHTJgGvfx-38tzuXqyaey70xG583XGp2Dq=
OOa1dOy07FzgUB8g%40mail.gmail.com</a>.<br />

--00000000000020cc1505c86572ba--
