Return-Path: <clang-built-linux+bncBDNPTDVEVEFBBUO53DWAKGQEI4H7GMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF79CA9EE
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 19:24:33 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id w10sf1413876wrl.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 10:24:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570123473; cv=pass;
        d=google.com; s=arc-20160816;
        b=kI66ow7lymhapI0sEnUo8IhoSiz2xLKZQpmVlJ1vEPw51GvUOLgaVaOjB0huf9o2HI
         CdOl30+cmCvnMKLQv4Mpnd+s+SXZrGX9PVpd3uSl8joNUumZHrLZzfDhTR41LXKeIJ4K
         X7/cLlX56B60y5Hzuyg/mhX6nyXuJu2q/PjfhnED1z4iHUDZbXQSYS7sOXIFiBMz3VgN
         DFsboxe091YMVWmwOc0R0H2OfxyICKsmhS+cear5IhNLansAcdTXtWLBQjNnws7dmp8z
         MsPIBpX71Cl2s9sqO1ogJINYoSOJFJlaaoVBrh2tMzDjXrX34rTnB9gz3JI2QJkKkVj6
         oNmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=5LIoFcNpCE9T6G2zNtQJPRrAL7pWS7FZkkKhEpcPLM0=;
        b=cOY1zIeoG1DmYuP93HZC4Dek7EON8+bIj3K8yiOrR0nB0Z0Ebp6wDciAdXCe3jroCc
         fH9YmlR7TEMjm82MjuPX2tBF5M2SQ8ds9F1BgDD84dcDrinaAYjKHH8+EKViiXhsNwVo
         O5KaL/j/pPmQamOOIILvkMYrjruAlngPCVP4NB0ZcrDdZsDO4oFzvcS5qefgztQTtjW6
         fxa/r8pKklKmekLQSGwfO5V/hy6rUUtnwqkF2EnoFXnfn3htQkvQWm0hdsWryfgz43S7
         FPYTTgUm4LYEeZhSmvUOkVIXUKTs4o18jnetHEu7qK7rI5liIl1xhMV4GN7ji0qlirNF
         gMyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@brauner.io header.s=google header.b=XTqVYkzD;
       spf=pass (google.com: domain of christian@brauner.io designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=christian@brauner.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LIoFcNpCE9T6G2zNtQJPRrAL7pWS7FZkkKhEpcPLM0=;
        b=oTp8FJN4efAeQ/gz2PrHn508irfp8JEMiNKiT/OuB1fDKpByFipwXBv8HJBwIvPxQV
         Id7P0m1otZUR05xrwupDTUmIdBot8OpK4RJKhbS99xNiFoGXMQR830jb9Xlti/9kP5Vj
         rgYQXPYbUHXE0w36YMh6ZExm5aYHmTeCSwEil4wL4t6Ep1lwa7eCYR0S9T7MMn49U+j3
         ARODx1f8xUXsl6gsccqMWpXI+o7PMbxX6D/0iuOEOoEd/ymmoYHTTSEugCDhWKJ5PThr
         WNs0HsRmqDeU/dOl1E46RD27LeukXhUh37cnZnylidpWfPOMXOoFRzv6fRSyV/3Y2A/B
         t0Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LIoFcNpCE9T6G2zNtQJPRrAL7pWS7FZkkKhEpcPLM0=;
        b=Tzn52cYDc+fauV5KsBpPBiQZuUAdDDyfROemHwYUP2D5gRxhSQyu1xl7Rn2Ac1RadM
         SNsDYM5Nwrygr5n1gYEfyDgNtujdLcq1JLHkeCu0jcUbpqqhhsCZcI8Mftc3nPbmBR5N
         qEJEslqQ5A0Mm0cUiGuzLp0GdCgJQ+a5SNz6ckOa/1G0EmXCPJhV0ilFPjURhYaANCXf
         J7EA8cBoLmk1qWdpqa/Ebgtlvj9uyrSX9ZjSo9KhoBDhSCFwZOuSW94OM7RMJ2X8W0TE
         VvoHNJ9lDbEhtQb4bOkvM3wjuLxccE3evJ/QTaW6jGXEzMMCE6coJmpic9jisK9nnZ36
         2EQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXWnrCSq9S5qwOnkISTfN8j6nY9VlyijdyvS/O7mMWFH2sHZ8oO
	EEdyD3qCjGPKAFBNhXqVymY=
X-Google-Smtp-Source: APXvYqwk1es9DPvcYuvg4AVnpkXGWA6UU04YJBpyVskmwKLOzeiVzrJVvrsOxV47jTa0sDRTNpamRw==
X-Received: by 2002:a1c:4d0d:: with SMTP id o13mr7931257wmh.19.1570123473134;
        Thu, 03 Oct 2019 10:24:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c44e:: with SMTP id l14ls217828wmi.4.canary-gmail; Thu,
 03 Oct 2019 10:24:32 -0700 (PDT)
X-Received: by 2002:a1c:658b:: with SMTP id z133mr7908954wmb.130.1570123472540;
        Thu, 03 Oct 2019 10:24:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570123472; cv=none;
        d=google.com; s=arc-20160816;
        b=02lf2y04y/QnFOFGAN4mjA26FtOWwj+pc+SHVf0sa3+IgwYRRU80D07zrSTRz09bHP
         3PPDyhUI8Dw7rCpvWcroRaDFLeiS7lHY6RpPzeNRRdetp/5Bps8hynEb3uMKZ/TCarSo
         JX7PP0XDsawOZkhsOWgyMfnYaTffc+tvUPlU8Hg2vkx5MjfYALnTCwLrnfV3Th2wHHe4
         Jba9v3p9TcIpYX8vOTrLRvRQQMXMOoYgA8g62MUYGTITddXIL+6SllN17494StD45oY7
         gPhlq7itZTTNX8/BTvnxW+fPZPhYYBtOFIs2Tm9mz4fdMB7qlu9IU3axg/9gxqyJDDCT
         sMwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ESbmXAcvOMFr/g7zrlNPGNueObq4Tma9d504o0m9VYY=;
        b=vTNB8KvGi8qBkYoZ3SdoR4ojsLBcS0i7Nh5ka5to4w/xcq1qlUrVVgct2+rXMYXsZ5
         fnPP669RloZ0GWnqk6y48dRhC+U1UOUWoshVz4CriqxcbetK0UkexX21F6LteQdvU9ZU
         sEUa5HNBoWQINyEAWNWU6q+MgtJD4GhiBOR4HvVFhe7Z7IO7q1QUjIcetIXB4y/ErGrU
         kFH0+M+TKQXiNqX8Gn/giLadH2X9rORPSkM4pfTQMwspde4eWMSz19psdp9MK3Y1i7IX
         iluF/Nwg6agGdr9BcCu5tsA/Izw+YTx2rwxUXyaSYH+GVL/fECwb03Esg8pRqj7rxeRV
         N3aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@brauner.io header.s=google header.b=XTqVYkzD;
       spf=pass (google.com: domain of christian@brauner.io designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=christian@brauner.io
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id n16si292349wrs.4.2019.10.03.10.24.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:24:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of christian@brauner.io designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id d1so3630715ljl.13
        for <clang-built-linux@googlegroups.com>; Thu, 03 Oct 2019 10:24:32 -0700 (PDT)
X-Received: by 2002:a2e:8919:: with SMTP id d25mr6672495lji.176.1570123471858;
 Thu, 03 Oct 2019 10:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191003171121.2723619-1-natechancellor@gmail.com>
In-Reply-To: <20191003171121.2723619-1-natechancellor@gmail.com>
From: Christian Brauner <christian@brauner.io>
Date: Thu, 3 Oct 2019 19:24:19 +0200
Message-ID: <CAHrFyr4GFJHQLHOi_OuDVkhuKxfnf_VkTWk6MJ2Mn1EtWhpqjg@mail.gmail.com>
Subject: Re: [PATCH] usercopy: Add parentheses around assignment in test_copy_struct_from_user
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Aleksa Sarai <cyphar@cyphar.com>, Kees Cook <keescook@chromium.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000cb4383059404db6b"
X-Original-Sender: christian@brauner.io
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@brauner.io header.s=google header.b=XTqVYkzD;       spf=pass
 (google.com: domain of christian@brauner.io designates 2a00:1450:4864:20::243
 as permitted sender) smtp.mailfrom=christian@brauner.io
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

--000000000000cb4383059404db6b
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 3, 2019, 19:11 Nathan Chancellor <natechancellor@gmail.com>
wrote:

> Clang warns:
>
> lib/test_user_copy.c:96:10: warning: using the result of an assignment
> as a condition without parentheses [-Wparentheses]
>         if (ret |= test(umem_src == NULL, "kmalloc failed"))
>             ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> lib/test_user_copy.c:96:10: note: place parentheses around the
> assignment to silence this warning
>         if (ret |= test(umem_src == NULL, "kmalloc failed"))
>                 ^
>             (                                              )
> lib/test_user_copy.c:96:10: note: use '!=' to turn this compound
> assignment into an inequality comparison
>         if (ret |= test(umem_src == NULL, "kmalloc failed"))
>                 ^~
>                 !=
>
> Add the parentheses as it suggests because this is intentional.
>
> Fixes: f5a1a536fa14 ("lib: introduce copy_struct_from_user() helper")
> Link: https://github.com/ClangBuiltLinux/linux/issues/731
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>

I'll take this. Aleksa, can I get your ack too, please?

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHrFyr4GFJHQLHOi_OuDVkhuKxfnf_VkTWk6MJ2Mn1EtWhpqjg%40mail.gmail.com.

--000000000000cb4383059404db6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, Oct 3, 2019, 19:11 Nathan Chancellor &lt;<a href=3D"ma=
ilto:natechancellor@gmail.com">natechancellor@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Clang warns:<br>
<br>
lib/test_user_copy.c:96:10: warning: using the result of an assignment<br>
as a condition without parentheses [-Wparentheses]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret |=3D test(umem_src =3D=3D NULL, &quot;k=
malloc failed&quot;))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~<br>
lib/test_user_copy.c:96:10: note: place parentheses around the<br>
assignment to silence this warning<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret |=3D test(umem_src =3D=3D NULL, &quot;k=
malloc failed&quot;))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 )<br>
lib/test_user_copy.c:96:10: note: use &#39;!=3D&#39; to turn this compound<=
br>
assignment into an inequality comparison<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret |=3D test(umem_src =3D=3D NULL, &quot;k=
malloc failed&quot;))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !=3D<br>
<br>
Add the parentheses as it suggests because this is intentional.<br>
<br>
Fixes: f5a1a536fa14 (&quot;lib: introduce copy_struct_from_user() helper&qu=
ot;)<br>
Link: <a href=3D"https://github.com/ClangBuiltLinux/linux/issues/731" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://github.com/ClangBuiltL=
inux/linux/issues/731</a><br>
Signed-off-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">natechancellor@gmail.com</a>&gt;=
<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">=
I&#39;ll take this. Aleksa, can I get your ack too, please?</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Acked-by: Christian Brauner &lt;<a hr=
ef=3D"mailto:christian.brauner@ubuntu.com">christian.brauner@ubuntu.com</a>=
&gt;</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAHrFyr4GFJHQLHOi_OuDVkhuKxfnf_VkTWk6MJ2Mn1EtW=
hpqjg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAHrFyr4GFJHQLHOi_OuDVkhuKxfnf_VkTW=
k6MJ2Mn1EtWhpqjg%40mail.gmail.com</a>.<br />

--000000000000cb4383059404db6b--
