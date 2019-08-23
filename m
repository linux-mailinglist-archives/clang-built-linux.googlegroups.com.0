Return-Path: <clang-built-linux+bncBDRZHGH43YJRB6H7QDVQKGQENYPTKWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id B35B59B719
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 21:35:20 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id y27sf1517849lfg.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 12:35:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566588920; cv=pass;
        d=google.com; s=arc-20160816;
        b=oTHniKSUCr3d2zI2BGw7ipiQnInUlVDBJV+zTt/cGz4WA+9x/SZr25208OHyi1ZZMc
         l3CTirklp7N+8FNhLXoPlhA52SV1JAU5vWBtpTOHLU+GZ+SgCEByUyutNDH6cFCDYboK
         eqywDv2eZyoNhULDhr7K7b6bxqJAmMFR9FPctOOTGmfouxL86jZksmQdX8NMGSN53fah
         0oWyaJ1ppRNFcJ1otsOuFGF0nqOL9373OPL+hF1T7sKJDUa4Fr7UCSa2EVkubV31InF7
         ht8ft9kp/Q5e1wNMKwQw74GQjpQxM4jJgcCHcgZeUKmOgGD/hU/MwQPsTAr7UJ9/fQei
         UtfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1hLJ81EVVnT2p7cS0itsaDVLl0nvCxN064PIbaiiwBQ=;
        b=t35qXsoU4BL56h0KomXtCiA/ZAwcAIEom78jM5veeNZmDytiWbiuvUGhSzL482kawb
         wKZCZyi9J0O8uKbcytecnhuEjOBLeXe9+ithcxPljTIOk8WAPXuzrcc8LKM+TutnTdCr
         ULi3N1wSfWClHNJYu9+XTnNLQjwHGj71wbu8pvZDNBn/4WEOIvNnOIu5TsdSh4CSa2n8
         zVQ90hrkDhI2xnnddfMRLVd//nNj3aloHHjky1boA0NHgZ7HpLy3bt++I1yu+6giGv40
         NNfp4mN9TzXXgNMOL2bbn+CT9fGjTj8NIlKa8/A/bQT2dq/Xvr4b9zLcP/O9Ob7VHUHy
         b7vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xgabrn6L;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1hLJ81EVVnT2p7cS0itsaDVLl0nvCxN064PIbaiiwBQ=;
        b=Xrz0g1cZuEkd61XkGOZJes4QHQMn2vRrf4kz5lAvtaY2v7H49U4mTtDDUS5k68qN5G
         zDKyJK5wxxISAzVCx+woEdLRHnF+SIHpF+EMNhiAdRu9Bh7aBefffHTofFXf3QVr1qK0
         kqB/3d3rhom93n0vuTKYBGdQTnLzaQx4Qao/tXBMMEc3+h7wjfXewS6ji8F8ldLyhPuD
         olUZ9NTn3LKDrgtgSQAfNS0O/RUlSv4ZeKEAfNSv6E2wDBX2xc2Kh+2mUMqpSYkaV04R
         Td+bX0IE5ON3E09krf+EDkD09rhDliZ2C24vCZCsMXHv5N6G8U4VRVKuUVH0dxRPwlJW
         U25w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1hLJ81EVVnT2p7cS0itsaDVLl0nvCxN064PIbaiiwBQ=;
        b=ki+Wtd1ng1zXRuAmYaQL/W3R7YBz2mOHj1XnF6G0MExgZ59S/az0uEzZ4RVJjhODu3
         pRYLws+nD/XnJnSzu3eIkT/XT5RrRbaz7+Evs5u+ZKypZuJKtiRwsYAYsz60e2d7AK71
         6sV6dmk9gGvXdbTpHU7yvJ+IyYFe29YWu9D2/szQu33TUgNjUQAA3haDvC0qfslPGm7t
         KvUY9hmnQ4SZDy9DA9W41d7i3VhDsKaJ/b4Q0pEG4amjzbZqiSdnSbVV1kiK+QrV7h4N
         rVE3ReAyt0AP6/Hf7B8SIAYu9Aoo2SxlV1Sbh0FY3zU8Vnn8yZhIcBw9udrNSsd1YHls
         4Hpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1hLJ81EVVnT2p7cS0itsaDVLl0nvCxN064PIbaiiwBQ=;
        b=MQolj82UvDsx0iLQmHVnPpG4QBt3JliRDQh/SXsRDpMnBk3AbhTz9N1o65Xip8QzKU
         M0g5CewLvuRPyIk88l/OBYrfR1XJ4+IEV7DwcTY+UoCWX4MoGsk0j7ahh/inLbi3hpTp
         FxVds50Ri8NZXAJ0zWP1cXWGv12MiB8KWLoMHbs85aTS202/tBrtx1nqkGJ+GIATxgYX
         7GLfcGP81/snuU19L1Rf47EdLFJXo9uG3PlN25gXtTjsv0MllQP/V26IGIGsK2+gVhy8
         4UjToQ3dzBDa/N3nJBhIGz6pnxbrXemsU9eWhat0Dt+OoSKiTthlFaUu2Pz15iHu48tQ
         4Rhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU6imJTavl5ZgFy0Jv3NZXW+sKYUPlLenTS1gdxq4aT+24btN9Q
	Ou/4TTqEhp4QnF386hvrc2Q=
X-Google-Smtp-Source: APXvYqx8xo+EPZqU6cq+RrFMu4Mp7LzuSqwb0m9FZ6ehdu+ghzT2vcWGpE99nee5v/tlpRNos8s0hQ==
X-Received: by 2002:a2e:6393:: with SMTP id s19mr3883944lje.46.1566588920265;
        Fri, 23 Aug 2019 12:35:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:91d9:: with SMTP id u25ls1225319ljg.15.gmail; Fri, 23
 Aug 2019 12:35:19 -0700 (PDT)
X-Received: by 2002:a2e:b1c4:: with SMTP id e4mr3980847lja.101.1566588919649;
        Fri, 23 Aug 2019 12:35:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566588919; cv=none;
        d=google.com; s=arc-20160816;
        b=jbbTEy9cP1TaS804krt+l78EYh53dClZbpGFy/kGBq4t+3MdAYxKr3Sq5RyYAZrga4
         c6A4Tzp51RsAgvJju1J1JSarHwI/k0FFsK0OBlJm1FW1u8lfnSuIZFqMVWludhI0kAFL
         Lg6UTwLEUAZ52vYOwg5tERWItdxZ0VGh41k3jy9H/SGC4fayAv4EvQxzoUduOnI7IZFh
         7ZnPyk5UeOuW6dNhlzfYcj7kVwD7aRJaNI70XddgntOyJNlb9O23PIbymGo8yDDtYu7+
         bZb+Hy03kxGqkwZ96UBW0hb/9rLUSo9pIzXyoTvK7OnALXhRyjMrUFVIrSjUlIt/MlWv
         IOvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Aw3zWTPY1Pke/iOZ2U1o3XSdWURhVQgfZ0MVHQIKkKg=;
        b=islgnBXP/+hfEjWeSc2hPRrLV8rrmmepZFoVYzrBbTrAvOHthacfZHh4UximuK5kz1
         IkGCaGoDLqAfRvn5kdR4CVboZC5gEbuq6Vq2s9taXDBoifY+qMxFhBoLjMamGDK4lVi8
         K/IDJkN0rWJfWOR0XCLrCPrmwy2nKxCuK7Eq6iG0VH5Bv1r9WZ/LiF5jG4n1HvGWhTAM
         dcfv66sjyIMn9BOerAjtzFHeemMw27aOoybntMkIfrAgmEOmP7x32i1VrCZyY/1ZECkK
         E6v2Yb7m9pxbzA7QXwAaBQmWZshiBKy+NttM4l8I/RTM+uIi6C/vkMeXxYAufDe3GyGd
         mLUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xgabrn6L;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id f26si126691lfp.5.2019.08.23.12.35.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2019 12:35:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id f9so9828679ljc.13
        for <clang-built-linux@googlegroups.com>; Fri, 23 Aug 2019 12:35:19 -0700 (PDT)
X-Received: by 2002:a2e:9252:: with SMTP id v18mr3917894ljg.93.1566588919507;
 Fri, 23 Aug 2019 12:35:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com> <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
 <20190813170829.c3lryb6va3eopxd7@willie-the-truck> <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
 <CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw@mail.gmail.com> <CANiq72nUyT-q3A9mTrYzPZ+J9Ya7Lns5MyTK7W7-7yXgFWc2xA@mail.gmail.com>
In-Reply-To: <CANiq72nUyT-q3A9mTrYzPZ+J9Ya7Lns5MyTK7W7-7yXgFWc2xA@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 23 Aug 2019 21:35:08 +0200
Message-ID: <CANiq72nfn4zxAO63GEEoUjumC6Jwi5_jdcD_5Xzt1vZRgh52fg@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Josh Poimboeuf <jpoimboe@redhat.com>, Yonghong Song <yhs@fb.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Andrey Konovalov <andreyknvl@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Enrico Weigelt <info@metux.net>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, 
	Shaokun Zhang <zhangshaokun@hisilicon.com>, Alexios Zavras <alexios.zavras@intel.com>, 
	Allison Randal <allison@lohutok.net>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Xgabrn6L;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Aug 15, 2019 at 11:12 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> Btw, I guess that is the Oops you were mentioning in the cover letter?

Pinging about this...

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nfn4zxAO63GEEoUjumC6Jwi5_jdcD_5Xzt1vZRgh52fg%40mail.gmail.com.
