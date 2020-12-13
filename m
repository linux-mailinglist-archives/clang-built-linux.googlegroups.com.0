Return-Path: <clang-built-linux+bncBCUJNWVN5ACRBYXK3D7AKGQE7BQT6PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4352D8E4B
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 16:38:11 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id t194sf5537422lff.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 07:38:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607873891; cv=pass;
        d=google.com; s=arc-20160816;
        b=OomR+yzgmwCWxDjUE+v89h4HaAkc7ktX4XTNdXU5MqpWqaUVJmmI85eIvuhDXbFWls
         pemKMzgRwsn4GpwVff6EDG7Z6H5dD0jTKM484x5lkGQhzdGPjV450OxqujX5UOt3V9kB
         1kW/7yWxgPvrzLtZyO0kyuawUa2TNzVlPIJfvYq+I9QGGcxxB7G3+a3WrFZJfZ0S/oBR
         tWSacAMIAEn05U8XaTtYvG7KKMgONc3Wlih9eqrKAQucZTyX/xdqQwo5meUT3XkJ7fmw
         aNxBLIKk5XZ3cu4Whh4SQq1DRZCfN9vFTT9T5dT6qJrfSAkB+3UKp4y0L/2OJL7PqNJI
         4gAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:subject:cc:from:references:to
         :dkim-signature;
        bh=gI7R01y7ib3S/5l1kjAehfb2jmKHaP3umX31zaIUhgQ=;
        b=gdWIn/589HoXA44mvj3oi8AuwUsqE6n1FMma8XrJo3Hs7mz7r78SJj+HkYRQSZWmha
         042c9++R9qhMcNYXg7ynE7UuTBfTU/kxvLwCErKKwXSzC0TCl5IlzLZ8wQzDBj8IKZ1x
         sXKrd+iryYtZzj1zWv5NGIPVJVTTNEg5rbzZUOJL9BDgO+FW6swtDB6KzcMtWc7jeV+Y
         MrWGnqe1T7p0wz/Bwd6mIuyDXCm7Rrz8ZFJmNKLxO5P+me8IZjLlPdr3EpB7sFJo4NjU
         LeWG0kJWhirEr5DvhBkR1LXMjWLmLQnvTWd45B/CjFl2x4c6fouF6pxjmRLRDXtUhZKI
         w3tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@urlichs.de header.s=20160512 header.b="aR//YVsV";
       spf=pass (google.com: domain of matthias@urlichs.de designates 2001:780:107:b::b as permitted sender) smtp.mailfrom=matthias@urlichs.de;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=urlichs.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=to:references:from:cc:subject:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gI7R01y7ib3S/5l1kjAehfb2jmKHaP3umX31zaIUhgQ=;
        b=tdLkHYFC9djvdPlW98JCK0qBeB9OpCQ4nuaEDUSWM+Xk5A441UhlXmrLNYo0a9vz4K
         4AnAfMmRiJEqv1fyRIO6zbSLPRvBJmIwza47a6WcqykCWj541osk0jFX6RRMI7FrhYOo
         kOCckvuYILAf2RYBEJ4rrc8/M4nrglDaFNnrT8MhZXfTaIuQnzAqaBI7YOctrRBJtLuN
         21kymt+zd96QOz4McJKdtkRmGwnscjH67jr3lN3+qQ01qRD/ZpE3ewHLJcv0P+XUlAtr
         0IyBQkSja0ueYTumTFaAzMK8g7s9DCygIO71gc1SvbFTZ2wDfO2GaBpHkl2zr8WLBS4W
         Nk+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:references:from:cc:subject:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gI7R01y7ib3S/5l1kjAehfb2jmKHaP3umX31zaIUhgQ=;
        b=fzuUc7emn8cSKGdwviFkegTuRUDXV8JqFJqjLmKwc/88Em/WfR15chyu4bsmXmI1/A
         f+pCwbcxKc3O+d2EXxPCeFIv+DPIwTu2eBwKbzZCAx4twHc+w1orbDlzJRIXhxeyWBql
         4Svn7jHmKAQSoY7L1QkSo6pPpjxiOzPQbsjMmNBmr697uc5KF7NXU1hyzswkI55eXBXg
         OEbwBw5n6YWTL3mpW0yPKI7vxIup1T4U9XgEVH7MkXrpresqJZAzJywiW8CCp0I9bfp9
         ud1OVOKHf/ovqUNSoTJqyquAXdXg4Bg3IfydROSdrub9E/W8lrWVGP24eG58wtcB3Ng+
         uAPg==
X-Gm-Message-State: AOAM5319YV0HLWfn9BcLopOyNMTfApOqZXHRc1WHa1KjXxIo1/UVG436
	iPE/2RfhJnMkoezw1Q2IF6s=
X-Google-Smtp-Source: ABdhPJw5ywKqgL1dfK3s04TGzh3hhQhNQox1Tpm+p6ya123StY6nH0agCgPWf9Kf5LwFTKYe9nBtvg==
X-Received: by 2002:ac2:5bcc:: with SMTP id u12mr7663673lfn.205.1607873891189;
        Sun, 13 Dec 2020 07:38:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3001:: with SMTP id w1ls2471554ljw.3.gmail; Sun, 13 Dec
 2020 07:38:10 -0800 (PST)
X-Received: by 2002:a2e:a58e:: with SMTP id m14mr9164057ljp.1.1607873889996;
        Sun, 13 Dec 2020 07:38:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607873889; cv=none;
        d=google.com; s=arc-20160816;
        b=twMJoBwsStyn9Yx+oI+l5v1OoTa56nyrJT0eijyAk4ePCpdvrFaBb/rgFQXR4jrWHb
         cSKrbJ4SXOThpvk81IhDJmI4yUMQUVpPlPM7uGt9y5Qaiyeo06Tn6D4zubkR10lx+dcb
         RxgiqYyXQULfZMdlXsyHEKVz0hF7W70S0r1dg4u9sn18Tso6MgephZJwXBggRB+nF2eN
         6xYeE6EcdTBbRDktWykKD6xUAHfVnjdlj8UPUA3r825Xhj7XkXjvL//Ba5/bXtyMm23Y
         VRiWucyBY6CRtr+NthlGsfTxAaRIxMnGzhwzLpPQ/RZ24nOCXMlB4f/aOhGVs+4qTa2g
         +IWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:subject:cc:from
         :references:to:dkim-signature;
        bh=LJWXCEfxtI2qDeR9POKxoNUdzhb5BH2bTWUe2QtE1lM=;
        b=TUUWUCj3lwhi7ifZdg6HILZgRMQoJAE/BRB+4l5/CQYWIDM3GvuJrbXLtYL46XO5Rw
         1lLq139S+exgSiSkJWoyJX93gL71en2EU+h7LddRG2SOoj2/F7zz0w+Q902bllRiTdqM
         tGGcLtRxb6UFIg3glOOxFz1STx1sxP7yvmdMrbsxciPF4qcRRHMmg4zLMv1nSEt8Oht6
         tngQ/thm31BpbASsubTj9l1OYzFegHYKaON09VTCzpnfqVyo29YVWolUFMfo2PYH3TDx
         vabfDJDEBLtL/ERO85oRwoo4XnjeijRUUKRy3F+irO55KPRqRUqwBx5EgHq+cNa5VVZI
         g0uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@urlichs.de header.s=20160512 header.b="aR//YVsV";
       spf=pass (google.com: domain of matthias@urlichs.de designates 2001:780:107:b::b as permitted sender) smtp.mailfrom=matthias@urlichs.de;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=urlichs.de
Received: from netz.smurf.noris.de (dispatch.smurf.noris.de. [2001:780:107:b::b])
        by gmr-mx.google.com with ESMTPS id e8si325042ljo.5.2020.12.13.07.38.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Dec 2020 07:38:09 -0800 (PST)
Received-SPF: pass (google.com: domain of matthias@urlichs.de designates 2001:780:107:b::b as permitted sender) client-ip=2001:780:107:b::b;
Received: from asi.s.smurf.noris.de ([2001:780:107:200::a])
	by mail.vm.smurf.noris.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <matthias@urlichs.de>)
	id 1koTRI-000BBG-93; Sun, 13 Dec 2020 16:37:36 +0100
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>
References: <20201128193335.219395-1-masahiroy@kernel.org>
 <20201212161831.GA28098@roeck-us.net>
 <CANiq72=e9Csgpcu3MdLGB77dL_QBn6PpqoG215YUHZLNCUGP0w@mail.gmail.com>
 <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net>
From: "'Matthias Urlichs' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Guenter Roeck <linux@roeck-us.net>, Masahiro Yamada
 <masahiroy@kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Shuah Khan <shuah@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
Message-ID: <f5c2d237-1cc7-5a78-c87c-29b7db825f68@urlichs.de>
Date: Sun, 13 Dec 2020 16:37:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="0bdZizaKkR1RRcy81CAwRurahlx0BShKc"
X-Smurf-Spam-Score: 0.0 (/)
X-Original-Sender: matthias@urlichs.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@urlichs.de header.s=20160512 header.b="aR//YVsV";       spf=pass
 (google.com: domain of matthias@urlichs.de designates 2001:780:107:b::b as
 permitted sender) smtp.mailfrom=matthias@urlichs.de;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=urlichs.de
X-Original-From: Matthias Urlichs <matthias@urlichs.de>
Reply-To: Matthias Urlichs <matthias@urlichs.de>
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

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--0bdZizaKkR1RRcy81CAwRurahlx0BShKc
Content-Type: multipart/mixed; boundary="UUmMppQ0TtM1nbyb9GJXrF53J0jYOCzmm";
 protected-headers="v1"
From: Matthias Urlichs <matthias@urlichs.de>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>
Cc: Guenter Roeck <linux@roeck-us.net>, Masahiro Yamada
 <masahiroy@kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Shuah Khan <shuah@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com
Message-ID: <f5c2d237-1cc7-5a78-c87c-29b7db825f68@urlichs.de>
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
References: <20201128193335.219395-1-masahiroy@kernel.org>
 <20201212161831.GA28098@roeck-us.net>
 <CANiq72=e9Csgpcu3MdLGB77dL_QBn6PpqoG215YUHZLNCUGP0w@mail.gmail.com>
 <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net>
In-Reply-To: <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net>

--UUmMppQ0TtM1nbyb9GJXrF53J0jYOCzmm
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: de-DE

Miguel Ojeda wrote:
> I think we can fix them as they come.

If your change to a function breaks its callers, it's your job to fix 
the callers proactively instead of waiting for "as they come" bug 
reports. (Assuming, of course, that you know about the breakage. Which 
you do when you tell us that the bad pattern can simply be grepped for.)

If nothing else, that's far more efficient than [number_of_callers] 
separate patches by other people who each need to find the offending 
change, figure out what to change and/or who to report the problem to, 
and so on until the fix lands in the kernel.

Moreover, this wouldn't leave the kernel sources in a non-bisect-able 
state during that time.

-- 
-- Matthias Urlichs


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f5c2d237-1cc7-5a78-c87c-29b7db825f68%40urlichs.de.

--UUmMppQ0TtM1nbyb9GJXrF53J0jYOCzmm--

--0bdZizaKkR1RRcy81CAwRurahlx0BShKc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEENzGcEL8EYxehRDgJ+GyybHbBwWUFAl/WNT8FAwAAAAAACgkQ+GyybHbBwWWQ
/Q/5Admk46b0U6/UaWBUvAy/2onXR+LSpg8kaKfHNHgWtiBlVCLskfttGkO7vkAlF7chabDO425F
JIa+zZmAelvHYTsKXba5xLmuX4CyA/tUUgBJH5l4f31Ywev0NyOd/tHaXstN1YgCXRNuiVLPrMU2
nAIhS2F+cX37C6jl8SayIy8+PKfSUR3sshRnIceEW8cTeqvnogGxr++UJKE8ShUTdgg4BVqIvJ6r
K39mfn/kAFtVQ9aT5vFHuvJJDUn+el4fQlkID77uWgIPBHqEBUuQQkxV3JCWH8rdgKXlowdlqHWU
m7ID6nhnJy0h+GfZTJhj1MQuO92M2lRq5x1aeQMP2EVp3n+fIzrjharn1CJerFRuv7aymt+QF8ZH
EUga+0tMg+DFGsQaQcFbyWwflluKj6++KSH69Bfh7ZFxop9X4v1aPO1GALUymM4CwcC9KO2hpMG9
q0iZWUu/nw7yJo30b8wrjQykL0xRonbrHYrkhbMy1v6DsZdvk4wdsuQUu76OSs+eYzY9VZv9vLKE
LOHQiHjKRndnm871eDFw0W17avE6MxLlMRaW6Qk1YnkTuuywih8XFdddTJuuMf0eFU/GdYbyo6Pa
rmiaTWPRHvwVYYq5h8jrnDSz1TpZGqSFcfE+2ZtLu3bUfj+NsGymwUI4/IegRlmkJ6uaEd7p4rB+
SUM=
=vTgV
-----END PGP SIGNATURE-----

--0bdZizaKkR1RRcy81CAwRurahlx0BShKc--
